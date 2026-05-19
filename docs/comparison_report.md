# Depression과 Anxiety의 임상연구 비교 리포트

## 1. 분석 목적

ClinicalTrials.gov에서 수집한 Depression 과Anxiety 임상시험 데이터를 비교하고자 한다. 

## 2. 모집 상태별 임상시험 분포 비교

Depression과 Anxiety 임상시험의 모집 상태(study_status)를 비교했다.

| 모집 상태 | Anxiety | Anxiety 비율 | Depression | Depression 비율 |
|---|---:|---:|---:|---:|
| COMPLETED | 613 | 61.3% | 605 | 60.5% |
| UNKNOWN | 114 | 11.4% | 151 | 15.1% |
| RECRUITING | 112 | 11.2% | 94 | 9.4% |
| TERMINATED | 55 | 5.5% | 53 | 5.3% |
| NOT_YET_RECRUITING | 40 | 4.0% | 35 | 3.5% |
| ACTIVE_NOT_RECRUITING | 33 | 3.3% | 24 | 2.4% |
| WITHDRAWN | 20 | 2.0% | 28 | 2.8% |
| ENROLLING_BY_INVITATION | 8 | 0.8% | 5 | 0.5% |
| SUSPENDED | 5 | 0.5% | 5 | 0.5% |

: Depression과 anxiety 임상시험 모두 COMPLETED 상태가 가장 많아, 두 데이터셋 모두 완료된 연구 중심으로 구성되어 있었음을 확인하였다.

다만 Depression 데이터는 UNKNOWN 상태가 151건으로 Anxiety의 114건보다 많아, 모집 상태가 불명확한 연구 비중이 상대적으로 높았다. 이는 후속 분석 시 데이터 품질 확인이 더 필요하다. 

반면 Anxiety 데이터는 RECRUITING 상태가 112건으로 Depression의 94건보다 많아, 현재 진행 중인 연구 비중이 상대적으로 높게 나타났다.


## 3. phase별 임상시험 분포 비교

Depression과 Anxiety 임상시험의 Phase 분포를 비교했다.  
Phase 정보가 없는 경우는 `NO_PHASE`로 통일해 해석했다.

| Phase | Anxiety | Anxiety 비율 | Depression | Depression 비율 |
|---|---:|---:|---:|---:|
| NO_PHASE | 711 | 71.1% | 729 | 72.9% |
| PHASE4 | 55 | 5.5% | 88 | 8.8% |
| PHASE3 | 94 | 9.4% | 40 | 4.0% |
| PHASE2 | 87 | 8.7% | 68 | 6.8% |
| PHASE1 | 30 | 3.0% | 29 | 2.9% |
| PHASE2\|PHASE3 | 10 | 1.0% | 18 | 1.8% |
| EARLY_PHASE1 | 7 | 0.7% | 16 | 1.6% |
| PHASE1\|PHASE2 | 6 | 0.6% | 12 | 1.2% |


: 두 질환군 모두 `NO_PHASE` 비중이 가장 높았다. Anxiety는 711건, Depression은 729건으로 전체 연구의 약 70% 이상이 Phase 정보가 없거나 비해당 연구로 분류되었다.

Anxiety는 PHASE3가 94건, PHASE2가 87건으로 Depression보다 PHASE2·PHASE3 연구 수가 더 많았다. 이는 Anxiety 관련 임상시험에서 중기 및 후기 단계 연구가 상대적으로 더 많이 관찰되었음을 의미함을 알 수 있다.

반면 Depression은 PHASE4가 88건으로 Anxiety의 55건보다 많았다. 이는 Depression 관련 임상시험에서 후기 단계 연구가 상대적으로 더 많이 등록되어 있음을 의미한다.  
## 4. Sponsor별 임상시험 분포

## 4. Sponsor별 임상시험 분포 비교

Depression과 Anxiety 임상시험에서 연구를 많이 등록한 Sponsor Top 10을 비교했다.  


| 순위 | Anxiety Sponsor | 건수 | Depression Sponsor | 건수 |
|---:|---|---:|---|---:|
| 1 | Karolinska Institutet | 16 | Massachusetts General Hospital | 29 |
| 2 | Linkoeping University | 13 | University of Pittsburgh | 18 |
| 3 | Massachusetts General Hospital | 12 | National Institute of Mental Health (NIMH) | 16 |
| 4 | NYU Langone Health | 12 | Weill Medical College of Cornell University | 16 |
| 5 | Pfizer | 12 | Stanford University | 15 |
| 6 | University of California, Los Angeles | 12 | University of California, Los Angeles | 14 |
| 7 | GlaxoSmithKline | 11 | Chinese University of Hong Kong | 12 |
| 8 | University of Texas at Austin | 11 | Northwestern University | 12 |
| 9 | AstraZeneca | 10 | University of California, San Francisco | 12 |
| 10 | National Institute of Mental Health (NIMH) | 9 | New York State Psychiatric Institute | 11 |

: Sponsor Top 10을 비교한 결과, Depression과 Anxiety 임상시험 모두 대학, 병원, 연구기관 중심으로 등록되어 있었다.

Depression에서는 Massachusetts General Hospital이 29건으로 가장 많았고, University of Pittsburgh, National Institute of Mental Health, Weill Medical College of Cornell University 등이 상위에 나타났다.

Anxiety에서는 Karolinska Institutet이 16건으로 가장 많았고, Linkoeping University, Massachusetts General Hospital, NYU Langone Health, Pfizer 등이 상위에 나타났다.

두 질환군 모두 연구기관과 대학병원이 주요 Sponsor로 많이 등장했다. 

본 분석은 ClinicalTrials.gov 등록 데이터 기준으로 어떤 기관이 많이 등장하는지 확인하고자 함이다.