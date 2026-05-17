-- 전체 임상시험 수, 고유 임상시험 수, 고유 sponsor 수 확인

SELECT
    COUNT(*) AS total_rows,
    COUNT(DISTINCT nct_id) AS unique_trials,
    COUNT(DISTINCT sponsor) AS unique_sponsors
FROM clinical_trials;


-- 모집 상태별 임상시험 수

SELECT
    study_status,
    COUNT(*) AS trial_count
FROM clinical_trials
GROUP BY study_status
ORDER BY trial_count DESC;