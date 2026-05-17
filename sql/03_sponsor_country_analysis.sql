-- Sponsor별 임상시험 수 Top 20

SELECT
    sponsor,
    COUNT(*) AS trial_count
FROM clinical_trials
WHERE sponsor IS NOT NULL
GROUP BY sponsor
ORDER BY trial_count DESC
LIMIT 20;


-- 지역/기관 정보 기준 임상시험 수 Top 20
-- locations 컬럼은 여러 국가/기관 정보가 합쳐져 있을 수 있어 참고용으로 확인

SELECT
    locations,
    COUNT(*) AS trial_count
FROM clinical_trials
WHERE locations IS NOT NULL
GROUP BY locations
ORDER BY trial_count DESC
LIMIT 20;