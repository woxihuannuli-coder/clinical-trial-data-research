# Project Highlight

이 프로젝트는 ClinicalTrials.gov 임상시험 데이터를 NCT ID 기준 중복 제거(dedup), 컬럼 표준화, 결측 처리, SQLite DB 적재, SQL 분석, 리포트 작성까지 연결한 데이터 리서치 MVP 프로젝트이다.

- ClinicalTrials.gov 임상시험 CSV 데이터 수집
- NCT ID 기준 중복 제거(dedup)
- 컬럼명 표준화 및 결측 처리
- SQLite DB 적재
- DBeaver와 SQL을 활용한 임상시험 등록 현황 분석
- Depression vs Anxiety 모집 상태, Phase, Sponsor 분포 비교


# 1. Clinical Trial Data Research & Dedup Pipeline

## 프로젝트 개요

ClinicalTrials.gov에서 수집한 우울증(Depression) 임상시험 데이터를 기반으로, 데이터 수집·정제·중복 제거·DB 적재·SQL 분석까지 진행한 데이터 리서치 프로젝트이다.

이 프로젝트의 목적은 임상시험 데이터를 분석 가능한 형태로 정리하고, NCT ID 기준 중복 제거와 SQL 기반 기본 분석 흐름을 경험하는 것이다.

## 데이터 출처

- Source: ClinicalTrials.gov
- Keyword: Depression
- Format: CSV
- Main Identifier: NCT ID

## 작업 흐름

```text
CSV 다운로드
→ 필요한 컬럼 선택
→ 컬럼명 정리
→ NCT ID 기준 중복 제거
→ 날짜/문자열 컬럼 정제
→ SQLite DB 적재
→ DBeaver에서 SQL 분석
→ 분석 리포트 작성
```

## 폴더구조
```text
clinical-trial-data-research/
├── data/
│   ├── raw_clinical_trials.csv
│   ├── cleaned_base.csv
│   ├── cleaned_trials.csv
│   └── clinical_trials.db
├── notebooks/
│   ├── 02_data_cleaning_base.ipynb
│   ├── 03_data_cleaning_dedup.ipynb
│   └── 04_load_to_sqlite.ipynb
├── sql/
│   ├── 01_trial_summary.sql
│   ├── 02_phase_status_analysis.sql
│   └── 03_sponsor_country_analysis.sql
└── docs/
    └── insight_report.md
```


## 주요 분석 내용

- 모집 상태별 임상시험 분포
- Phase별 임상시험 분포
- Sponsor별 임상시험 분포

*자세한 분석 결과는 아래 문서에 정리했다.
- [Insight Report](docs/insight_report.md)


## 사용기술

- Python
- pandas
- SQLite
- DBeaver
- SQL
- Jupyter Notebook





# 2. Extension Analysis: Depression vs Anxiety Comparison

기존 Depression 임상시험 데이터 처리 흐름을 재사용하여 Anxiety 임상시험 데이터를 추가로 수집·정제하고, 두 질환군의 임상시험 등록 현황을 비교했다.

### 분석 내용

- Depression vs Anxiety 모집 상태 분포 비교
- Depression vs Anxiety Phase 분포 비교
- Depression vs Anxiety Sponsor Top 10 비교

### 주요 산출물

- `data/cleaned_anxiety_trials.csv`
- `data/mental_health_trials.db`
- `notebooks/06_anxiety_data_cleaning.ipynb`
- `notebooks/07_depression_anxiety_comparison.ipynb`
- `sql/04_condition_comparison.sql`
- `sql/05_phase_sponsor_comparison.sql`
- `docs/comparison_report.md`



NCT ID 기준으로 등록된 임상시험 연구의 메타데이터를 비교한 데이터 리서치 분석이다.
