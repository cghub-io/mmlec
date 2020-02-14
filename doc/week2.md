## 사진측량
- Photogrammetry(포토그래메트리)
- 사진들로부터 물체를 측정하는 작업

### Concept
> ![](../img/week2/pgm_concept.png)

1. 물체의 높이와 폭을 알고싶다
    > ![](../img/week2/pgm_what_size.png)
1. 물체를 여러 각도에서 촬영한다
    > ![](../img/week2/pgm_take_photos.png)
1. 촬영한 사진들을 수집한다
    > ![](../img/week2/pgm_collected_photos.png)
1. 사진들을 매치무브 소프트웨어에 넣고 계산한다
    > ![](../img/week2/pgm_calculate.png)
1. 물체의 높이와 폭을 알아냈다
    > ![](../img/week2/pgm_survey.png)

### In Depth
> ![](../img/week2/pgm_in_depth.png)

1. 촬영한 사진들을 수집한다
    > ![](../img/week2/pgm_collected_photos.png)
1. 각 카메라의 화각 정보를 입력한다 (포컬랭스 & 필름백 입력 >> 화각 자동산출)
    > ![](../img/week2/pgm_fl_fb_aov.png)
1. 사진들간 대응점을 찾는다
    > ![](../img/week2/pgm_correspondence.png)
1. 각 카메라의 화각과 대응점 정보를 솔버(solver)에 넣고 계산한다
    > ![](../img/week2/pgm_calculate.png)
1. 카메라 캘리브레이션 - 각 카메라의 위치와 회전이 재건
    > ![](../img/week2/pgm_camera_calibration.png)
1. 삼각측량법 - 3D 포인트 재건
    > ![](../img/week2/pgm_triangulation.png)<br>
    > ![](../img/week2/pgm_triangulation_many.png)<br>
1. 물체의 높이와 폭을 알아냈다
    > ![](../img/week2/pgm_survey.png)

### Condition
1. 최소 대응점 개수
    - 위치(Position) XYZ, 회전(Rotation) XYZ 6개의 값을 솔브하기 위해서, 프레임 마다 최소 6개의 대응점이 필요하다.
    - BAD
        > ![](../img/week2/min_markers_bad_wm.gif)
    - GOOD
        > ![](../img/week2/min_markers_good_wm.gif)
1. 정적인 장면
    - 동적인 장면(Dynamic Scene)
        > ![](../img/week2/sea.gif)
        > ![](../img/week2/dynamic_scene.png)
1. 시차
    - Parallax(패럴랙스)
        > ![](../img/week1/parallax/parallax_two_camera.png)
        > ![](../img/week1/parallax/parallax_two_camera_image.png)
    - Translation
        > ![](../img/week1/parallax/parallax_translate_camview_reformat-min.gif)<br>
    - Rotation
        > ![](../img/week1/parallax/parallax_rotate_camview_reformat-min.gif)<br>

## Photomodeling
1. 각 카메라 화각 구하기
    1. 필름 백 가로 또는 세로 구하기
        > ![](../img/week2/photomodeling/image_pixel_ratio.png)<br>
        > ![](../img/week2/photomodeling/fixed_fbw_passive_fbh.png)<br>
        > ![](../img/week2/photomodeling/fixed_fbh_passive_fbw.png)<br>
        > ![](../img/week2/photomodeling/simple_math.png)<br>
    1. 포컬 랭스 구하기
        - 35mm
1. 씬의 스케일 및 로테이션(오리엔테이션) 규정
    1. 스케일 규정
        - 현장에서 측정해온 실측정보로 Distance Constraint 생성
        > ![](../img/week2/photomodeling/set_measure.png)<br>
    1. 로테이션(오리엔테이션) 규정
        - 가장 빠른 방법은 바닥점들을 무더기로 잡고 수평을 상태로 만들기.
        > ![](../img/week2/photomodeling/select_ground_points.png)<br>
- 화각이 같으면 솔브가 같다
    > ![](../img/week2/photomodeling/same_aov_same_solve.png)<br>

## 심화

### A. 포컬 랭스를 모르면? (필름백은 알고 있다)
> ![](../img/week2/guess_fl_fb/guess_fl.png)<br>

1. 최저 에러
    - 수동
        > ![](../img/week2/guess_fl_fb/guess_fl_and_aov.png)<br>
        > ![](../img/week2/guess_fl_fb/guess_fl_by_deviation.png)<br>
        > ![](../img/week2/guess_fl_fb/punching_in_fl.png)<br>
        > ![](../img/week2/guess_fl_fb/lowest_deviation.png)<br>
    - 자동
        > ![](../img/week2/guess_fl_fb/param_adj.png)<br>
        > ![](../img/week2/guess_fl_fb/param_adj_howitworks.png)<br>
1. 소실점
    - fspy - [https://fspy.io/](https://fspy.io/)
        > ![](../img/week2/guess_fl_fb/fspy.png)<br>

### B. 필름 백을 모르면? (포컬랭스는 알고 있다)
- 녹화 해상도(원본 해상도)를 아는 상황
    - 제조사 홈페이지에 가서 역추적
        - [RED](https://www.red.com/crop-factor)
            > ![](../img/week2/guess_fl_fb/red_crop_factor_tool.png)<br>
        - [ARRI](https://www.arri.com/en/learn-help/learn-help-camera-system/white-papers)
            > ![](../img/week2/guess_fl_fb/afro.png)<br>
            > ![](../img/week2/guess_fl_fb/afro_link.png)<br>
- 녹화 해상도(원본 해상도)를 모른는 상황
    - 최저 에러, 소실점 방법을 동원해서 필름 백 찾기.(비추천)
    - Go to C!!!

### C. 포컬 랭스 & 필름 백, 둘다 모른다
- 카메라 기종을 아는 상황
    1. 필름 백 가로를 센서의 가로 길이로 Fix.
    1. 최저 에러, 소실점 방법을 동원해서 포컬랭스 찾기.
- 카메라 기종을 모르는 상황
    1. 필름 백 가로를 36mm로 Fix.
    1. 최저 에러, 소실점 방법을 동원해서 포컬랭스 찾기.


---

### [PREV - Introduction to Matchmove](./week1.md) &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [NEXT - Camera Tracking](./week3.md)
