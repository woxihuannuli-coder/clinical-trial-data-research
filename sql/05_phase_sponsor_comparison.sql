-- 05_phase_sponsor_comparison.sql
-- 목적: Depression vs Anxiety 임상시험의 Phase 및 Sponsor 분포를 비교한다.
-- 분석 단위: NCT ID 기준 임상시험 연구 1건

--  질환군별 Phase 분포
SELECT
    condition_group,
    COALESCE(NULLIF(TRIM(phases),''),'NO_PHASE')AS phase_group,
    COUNT(*) AS trial_count
FROM mental_health_trials
GROUP BY
    condition_group,
    phase_group
ORDER BY
    condition_group,
    trial_count DESC;


    -- 2. Anxiety Sponsor Top 10
SELECT
    sponsor,
    COUNT(*) AS trial_count
FROM mental_health_trials
WHERE condition_group = 'Anxiety'
GROUP BY sponsor
ORDER BY trial_count DESC
LIMIT 10;


-- 3. Depression Sponsor Top 10
SELECT
    sponsor,
    COUNT(*) AS trial_count
FROM mental_health_trials
WHERE condition_group = 'Depression'
GROUP BY sponsor
ORDER BY trial_count DESC
LIMIT 10;


-- + window function

WITH sponsor_count AS (
    SELECT
        condition_group,
        COALESCE(NULLIF(TRIM(sponsor), ''), 'UNKNOWN_SPONSOR') AS sponsor_name,
        COUNT(*) AS trial_count
    FROM mental_health_trials
    GROUP BY
        condition_group,
        sponsor_name
),

ranked_sponsor AS (
    SELECT
        condition_group,
        sponsor_name,
        trial_count,
        ROW_NUMBER() OVER (
            PARTITION BY condition_group
            ORDER BY trial_count DESC
        ) AS sponsor_rank
    FROM sponsor_count
)

SELECT
    condition_group,
    sponsor_rank,
    sponsor_name,
    trial_count
FROM ranked_sponsor
WHERE sponsor_rank <= 10
ORDER BY
    condition_group,
    sponsor_rank;