# Depression Clinical Trial Data Research Report

## 1. 프로젝트 목적
임상시험 데이터를 수집, 정제, 분석함으로써 임상시험 데이터의 구조와 처리 흐름에 익숙해지는 것을 목적으로 한다.

## 2. 데이터 처리 과정
 ㄱ. ClinicalTrials.gov에서 Depression 관련 임상시험 CSV 다운로드
 
 ㄴ. 분석에 필요한 컬럼 선택, 컬럼 이름을 snake_case로 변경
 
 ㄷ. 중복되는 nct_id를 제거함으로써 중복되는 임상시험 데이터를 제거
 
 ㄹ. 날짜 컬럼 datetime 변환
 
 ㅁ. 문자열 컬럼 공백 제거 및 빈 문자열 결측 처리
 
 ㅂ. 정제된 데이터를 SQLite DB에 적재
 
 ㅅ. DBeaver에서 SQL 분석 수행

 

## 3. 분석 1: 모집 상태별 임상시험 분포
현재 사용하고 있는 data의 연구들이 종료된 연구인지, 진행중인 연구인지 데이터셋의 상태를 확인하기 위함이다.

분석결과 
| study_status | trial_count |
|---|---:|
| COMPLETED | 605 |
| UNKNOWN | 151 |
| RECRUITING | 94 |
| TERMINATED | 53 |
| NOT_YET_RECRUITING | 35 |
| WITHDRAWN | 28 |
| ACTIVE_NOT_RECRUITING | 24 |
| SUSPENDED | 5 |
| ENROLLING_BY_INVITATION | 5 |


 : 데이터셋의 상태분포는 "COMPLETED"가 605건으로 가장 많았으며, 이는 본 데이터셋이 현재 모집 중인 연구보다 과거에 완료된 연구를 더 많이 포함하고 있음을 보여준다.
   또한 "RECRUITING" 상태의 임상시험은 94건으로 확인되어,  우울증 관련 임상시험이 현재도 일정 수준 진행 중임을 확인할 수 있었다.
   "TERMINATED", "WITHDRAWN", "SUSPENDED" 와 같은 상태도 존재해,  일부 연구는 중단되거나 철회된 이력이 있음을 알 수 있었다.



## 4. 분석 2: Phase별 임상시험 분포
데이터셋에서 임상시험의 단계별로 어떻게 분포하고 있는지 확인하기 위함이다. Phase 정보가 없는 경우에는 "NO_PHASE" 로 분류하였다.

분석결과 
| phase | trial_count |
|---|---:|
| NO_PHASE | 729 |
| PHASE4 | 88 |
| PHASE2 | 68 |
| PHASE3 | 40 |
| PHASE1 | 29 |
| PHASE2\|PHASE3 | 18 |
| EARLY_PHASE1 | 16 |
| PHASE1\|PHASE2 | 12 |


: phase별 임상시험 분포는 "NO_PHASE"가 729건으로 가장 많았다. 이는 임상시험데이터에 약물 개발 임상뿐 아니라 행동개입, 관찰연구, 심리치료, 디지털 치료 관련 연구가 포함되어 있을 가능성을 보여준다. Phase 정보가 있는 연구 중에서는 `PHASE4`, `PHASE2`, `PHASE3` 순으로 많이 나타났다. 이를 통해 우울증 임상시험 데이터에는 시판 후 연구, 효과·용량 확인 연구, 대규모 효과 검증 연구가 함께 포함되어 있음을 확인할 수 있었다.



## 5. 분석 3: Sponsor별 임상시험 분포
우울증 임상시험을 어느 기관에서 많이 진행했는지 확인하기 위함이다. 

분석결과
| sponsor | trial_count |
|---|---:|
| Massachusetts General Hospital | 29 |
| University of Pittsburgh | 18 |
| Weill Medical College of Cornell University | 16 |
| National Institute of Mental Health (NIMH) | 16 |
| Stanford University | 15 |
| University of California, Los Angeles | 14 |
| University of California, San Francisco | 12 |
| Northwestern University | 12 |
| Chinese University of Hong Kong | 12 |
| New York State Psychiatric Institute | 11 |

: Sponsor별 임상시험 수를 집계한 결과, Massachusetts General Hospital이 29건으로 가장 많았다. 그 외 University of Pittsburgh, Weill Medical College of Cornell University,National Institute of Mental Health, Stanford University 등이 상위에 포함되었다.
상위 sponsor 대부분이 병원, 대학, 공공 연구기관으로 구성되어 있어, 본 우울증 임상시험 데이터셋은 제약사 중심의 신약개발 연구뿐 아니라 학술기관 및 공공 연구기관 주도의 연구도 많이 포함하고 있음을 확인할 수 있었다.


## 6. 프로젝트 의의
NCT ID 기준 중복 제거, 컬럼 표준화, 결측 처리, SQLite DB 적재, SQL 분석까지 연결해보고, 모집 상태·Phase·Sponsor 기준으로 데이터를 분석해보았다. 이를 통해 데이터 리서치 직무에서 요구되는 데이터 정제, 검수, DB 적재, SQL 분석 흐름을 경험하고자 했다.

