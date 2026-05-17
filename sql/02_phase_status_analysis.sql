-- Phase별 임상시험 수

SELECT
    COALESCE(phases, 'NO_PHASE') AS phase,
    COUNT(*) AS trial_count
FROM clinical_trials
GROUP BY COALESCE(phases, 'NO_PHASE')
ORDER BY trial_count DESC;


-- Phase와 모집 상태별 임상시험 수

SELECT
    COALESCE(phases, 'NO_PHASE') AS phase,
    study_status,
    COUNT(*) AS trial_count
FROM clinical_trials
GROUP BY COALESCE(phases, 'NO_PHASE'), study_status
ORDER BY phase, trial_count DESC;