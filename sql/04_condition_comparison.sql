-- 04_condition_comparison.sql
-- 목적: Depression vs Anxiety 임상시험의 모집 상태 분포와 비율을 비교한다.
-- 분석 단위: NCT ID 기준 임상시험 연구 1건
WITH status_count AS (
    SELECT
        condition_group,
        study_status,
        COUNT(*) AS trial_count
    FROM mental_health_trials
    GROUP BY
        condition_group,
        study_status
),

total_count AS (
    SELECT
        condition_group,
        COUNT(*) AS total_trials
    FROM mental_health_trials
    GROUP BY condition_group
)

SELECT
    s.condition_group,
    s.study_status,
    s.trial_count,
    ROUND(s.trial_count * 100.0 / t.total_trials, 2) AS status_ratio
FROM status_count AS s
JOIN total_count AS t
    ON s.condition_group = t.condition_group
ORDER BY
    s.condition_group,
    status_ratio DESC;