# 카메라와 영상

# 카메라
## 사진은 어떻게 만들어지는가?

## 노출(Exposure)
- 사진은 이미지 센서나 필름이 빛에 노출되어 만들어진다.
- 광량을 조절해서 사진의 밝기를 조절 할 수 있다.
    > ![](../img/week1/exposure_types.png)
### 셔터 스피드
- 정의: 이미지 센서 앞쪽의 셔터가 열려 있는 시간
    - '찰'부터 '칵'까지의 시간
        > ![](../img/week1/shutter.png)
- 노출과 관련된 특성: 셔터 스피드가 느려지면 사진이 밝아진다
    - 초당 같은 양의 물을 뿜어내는 두 수도꼭지가 있다. 수도꼭지를 더 오래 틀어 놓은 쪽이 더 많은 물을 뿜어냈다.
    - 센서나 필름이 빛에 더 오래 노출 될수록 광량을 더 많이 받는다.
        > ![](../img/week1/shutter_speed_example.png)
- 고유의 특성: 셔터가 느려지면 사진이 흔들릴 수 있다
### 조리개
- 정의: 빛이 들어오는 **구멍의 크기**를 조절하여 빛의 양을 조절하는 장치
- 노출과 관련된 특성: 조리개를 조이면 사진이 어두워진다
    - 초당 다른 양의 물을 뿜어내는 두 수도꼭지가 있다. 같은 시간동안 틀어놓았더니, 뿜어낸 물의 총양은 왼쪽 수도꼭지가 훨씬 많았다.
    - 셔터 스피드가 동일해도 조리개의 크기에 따라 광량이 달라진다.
        > ![](../img/week1/aperture_example.png)
- 고유의 특성: 조리개를 조이면 심도가 깊어진다 [(이것 말고도 고유 특성이 많음)](http://www.youtube.com/watch?v=SxdpOwJCb4k)
### ISO(감광속도)
- 정의: 렌즈를 통해 들어오는 광량을 카메라에서 **증폭**시키는 정도를 나타낸다
- 노출과 관련된 특성: ISO가 올라가면 사진이 밝아진다
- 고유의 특성: ISO가 올라가면 화질이 저하된다
    > ![](../img/week1/iso_noise_comparison.png)

## 화각(Angle of View)
### 포컬 랭스(Focal Length)
- 정의: 렌즈의 제 2주점에서 초점면까지의 거리
- 특징
    1. 포착할 수 있는 장면의 화각을 결정한다
        > ![](../img/week1/fl_aov.png)
    1. 렌즈에 의해 결정된다
        > ![](../img/week1/prime_and_zoom_lens.png)<br>
        > 참고로 렌즈의 적혀있는 포컬 랭스 수치는 **대략값**입니다. 50mm 라고 적혀있다고 50.0mm로 딱 떨어지는 게 절대 아니라는 점.
    - 화각 비교
        - 카메라 위치 및 각도는 고정. 포컬 랭스만 바꿔서 촬영된 이미지들.
        > ![](../img/week1/fl_24mm.png)<br>
        > ![](../img/week1/fl_35mm.png)<br>
        > ![](../img/week1/fl_50mm.png)<br>
        > ![](../img/week1/fl_75mm.png)<br>
        > ![](../img/week1/fl_24_75mm.png)<br>
### 필름 백(Film Back)
- 정의: 이미지 센서의 **활성 영역(Active Area)**.
    > ![](../img/week1/active_area.png)<br>
    > **Film Back Size**와 **Active Area Size**는 같은 말<br>
    > **Film Back Size**와 **Sensor Size**는 전혀 다른 말!!!<br>
    > ![](../img/week1/active_area_all_part.png)<br>
    > **활성 영역**은 **센서의 전체**가 될 수도 있고, **센서의 일부분**이 될 수도 있다.<br>
    - :star: **Film Back Size**와 **Active Area Size**는 같은 말, **Film Back Size**와 **Sensor Size**는 전혀 다른 말!!! :star:
        > ![](../img/week1/active_area.png)<br>
    - **활성 영역**은 **센서의 전체**가 될 수도 있고, **센서의 일부분**이 될 수도 있다.
        > ![](../img/week1/active_area_all_part.png)
- 특징
    1. 포착할 수 있는 장면의 화각을 결정한다
        > ![](../img/week1/fb_aov.png)
    1. 바디에 의해 결정된다
### 화각
- 특징
    1. **포컬 랭스와 필름 백의 조합**에 의해 결정된다
    1. 즉, **렌즈와 바디에 조합**에 의해 결정된다
- 계산법
    > ![](../img/week1/aov_formula_concept.png)<br>
    > ![](../img/week1/aov_formula_formula.png)
- 예제
    > ![](../img/week1/full_frame_fl_35mm.png)<br>
    > ![](../img/week1/full_frame_fl_35mm_aov.png)<br>

## 원근법 & 원근감 (Perspective)
### 원근법
- 가까이 있는 물체는 커 보이고, 멀리 있는 물체는 작아 보이는...
    > ![](../img/week1/perspective/perspective_two_statue.png)<br>
    > ![](../img/week1/perspective/perspective_same_size.png)<br>
    > ![](../img/week1/perspective/perspective_diff_size.png)<br>
### 원근감
- 멀고 가까운 거리에 대한 느낌
    > ![](../img/week1/perspective/perspective_diff_size_bigger.png)<br>
    > ![](../img/week1/perspective/perspective_diff_size_bigger_result.png)<br>
    > ![](../img/week1/perspective/perspective_diff_size_smaller.png)<br>
    > ![](../img/week1/perspective/perspective_diff_size_smaller_result.png)<br>
- 원근감은 상대적 거리가 클수록 강하게 먹힘
    > ![](../img/week1/perspective/perspective_strong.png)<br>
    > ![](../img/week1/perspective/perspective_medium.png)<br>
    > ![](../img/week1/perspective/perspective_weak.png)<br>

## 시차 (Parallax)
- 어떤 물체를 서로 다른 위치에 있는 두 관측자가 관측했을 때 발생하는 겉보기 위치의 차이 또는 변위.
> ![](../img/week1/parallax/parallax_two_camera.png)<br>
> ![](../img/week1/parallax/parallax_two_camera_image.png)<br>
### 위치(Position)이동만 하는 카메라
- 카메라와 가까운 물체 일수록 시차가 강하게 먹힌다.
- 가장 앞에 있는 노란콘이 가장 빨리 움직이고, 하늘은 너무 멀어서 미동도 없다.
> ![](../img/week1/parallax/parallax_translate_camview_reformat-min.gif)<br>
### 화전(Rotation)만 하는 카메라
- 시차가 발생하지 않는다.
- 가장 앞에 있는 노란콘과 가장 먼 하늘이 같은 속도로 움직인다.
> ![](../img/week1/parallax/parallax_rotate_camview_reformat-min.gif)<br>

## 렌즈
### 구조
렌즈의 단면만 봐도 바로 느껴질 겁니다. ~~아 복잡한다.~~ 전문가가 아닌 이상 렌즈를 완벽하게 이해 할 필요가 없습니다. 경통 안에 왜 수많은 렌즈들이 들어가 있는지 그 이유 정도만 살펴보면 됩니다.
> ![](../img/week1/lens_half.png)
### 볼록 렌즈
- 볼록 렌즈로 빛을 집중시킬 수 있다.
    > ![](../img/week1/convex_lens_focal_point_.png)
- 하지만 볼록 렌즈 한개 만으로는 한점에 집중시키기 힘듭니다.
    > ![](../img/week1/convex_lens_focal_point_limit.png)
### [광학 수차(Optical Abberation)](https://ko.wikipedia.org/wiki/%EA%B4%91%ED%95%99_%EC%88%98%EC%B0%A8)
#### 단색수차(Monochromatic Aberration)
1. 구면수차
1. 혜성형 수차
1. 비점수차
1. 상면만곡
1. :star:**왜곡(Distortion)**:star:
    - 다른 수차가 화상의 초점 선명도와 관계가 있지만, 왜곡은 화상의 전체적인 모양(Shape)과 관련이 있다.
    > ![https://upload.wikimedia.org/wikipedia/commons/2/2c/Panotools5618.jpg](https://upload.wikimedia.org/wikipedia/commons/2/2c/Panotools5618.jpg)<br>
    > Ashley Pomeroy at English Wikipedia [CC BY]

#### 색수차(Chromatic Aberration)
> ![https://upload.wikimedia.org/wikipedia/commons/a/aa/Chromatic_aberration_lens_diagram.svg](https://upload.wikimedia.org/wikipedia/commons/a/aa/Chromatic_aberration_lens_diagram.svg)<br>
> DrBob at the English language Wikipedia [CC BY-SA]
> ![https://upload.wikimedia.org/wikipedia/commons/9/94/FeralHorse044.JPG](https://upload.wikimedia.org/wikipedia/commons/9/94/FeralHorse044.JPG)<br>
### 교정
- **볼록 렌즈**와 **오목 렌즈**의 조합
    > ![https://upload.wikimedia.org/wikipedia/commons/1/15/Lens6b-en.svg](https://upload.wikimedia.org/wikipedia/commons/1/15/Lens6b-en.svg)<br>
    > Original uploaded by DrBob (Transfered by nbarth) [CC BY-SA]
### X군 Y매
- 볼록 렌즈 + 오목 렌즈 = 1군
- 렌즈 조각 = 1매
> ![](../img/week1/group_element.png)

---

# 영상
## 디지털 이미지
### 픽셀(Pixel)
### 해상도(Resolution)

## 파일 형식(File Format)
### 이미지
- jpg / png / gif / dpx / exr 등
### 동영상
#### 비디오 파일
- 이미지 시퀀스를 단일 파일로 압축한 것
- mp4 / mov / avi 등
#### 이미지 시퀀스(Image Sequence)
- 낮장으로 이루어진 연속적인 이름을 가진 이미지 파일
- <이름(Name)>.<패딩(Padding)>.<확장자(Extension)>
- ```
  myvid.0001.jpg
  myvid.0002.jpg
  myvid.0003.jpg
  ...
  ```

---

## [DJV - 오픈소스 비디오 플레이어 - 무료](https://darbyjohnston.github.io/DJV/)
> ![](../img/week1/djv.png)<br>

- 이미지 시퀀스의 경우 일반적인 비디오 플레이어로는 재생이 안되는 경우가 많다. 영상편집 프로그램 같은 특수한 소프트웨어를 통해서만 재생이 가능하다.

- 비디오 파일을 이미지 시퀀스로 변환해주는 툴도 내장되어 있다.
    - `File >> Export Sequence`

### [Download](https://darbyjohnston.github.io/DJV/download.html)
- 윈도우 유저는 ZIP파일로 받을 것을 권장한다.
> ![](../img/week1/djv_download.png)<br>

## [XnView - 개인용/교육용 무료](https://www.xnview.com/en/xnviewmp/)
> ![](https://www.xnview.com/assets/img/screenshots/xnviewmp-win-01.png)<br>

- CG작업하다 보면 이미지 시퀀스 리네이밍, RAW파일 보기, 파일확장자 변환, 메타데이터 확인 등등의 업무가 생긴다. XnView의 유틸리티들을 사용하면 쉽게 해결할 수 있다.

### [Download](https://www.xnview.com/en/xnviewmp/#downloads)
> ![](../img/week1/xnview_download.png)<br>

---

# 참고자료 모음

## 기초
[![](http://img.youtube.com/vi/AVWTiAN6J6Q/0.jpg)](http://www.youtube.com/watch?v=AVWTiAN6J6Q "")
[![](http://img.youtube.com/vi/-Y4YZlEQafs/0.jpg)](http://www.youtube.com/watch?v=-Y4YZlEQafs "")
[![](http://img.youtube.com/vi/xgx8jMrGARg/0.jpg)](http://www.youtube.com/watch?v=xgx8jMrGARg "")
[![](http://img.youtube.com/vi/ZKmNUP_5TFQ/0.jpg)](http://www.youtube.com/watch?v=ZKmNUP_5TFQ "")

## 심화
[![](http://img.youtube.com/vi/SxdpOwJCb4k/0.jpg)](http://www.youtube.com/watch?v=SxdpOwJCb4k "")
[![](http://img.youtube.com/vi/NCDnwVecS6o/0.jpg)](http://www.youtube.com/watch?v=NCDnwVecS6o "")
[![](http://img.youtube.com/vi/IM_JA3yv5ek/0.jpg)](http://www.youtube.com/watch?v=IM_JA3yv5ek "")
[![](http://img.youtube.com/vi/aDYDsCwbpDA/0.jpg)](http://www.youtube.com/watch?v=aDYDsCwbpDA "")
[![](http://img.youtube.com/vi/fQCEgreQf2E/0.jpg)](http://www.youtube.com/watch?v=fQCEgreQf2E "")
[![](http://img.youtube.com/vi/fQCEgreQf2E/0.jpg)](http://www.youtube.com/watch?v=fQCEgreQf2E "")
[![](http://img.youtube.com/vi/jtUvPXW5iWg/0.jpg)](http://www.youtube.com/watch?v=jtUvPXW5iWg "")
[![](http://img.youtube.com/vi/tNjsSN7vCLk/0.jpg)](http://www.youtube.com/watch?v=tNjsSN7vCLk "")


---

# Reference
1. [Derivative: nagualdesignOriginal: Balkhovitin [CC BY-SA 3.0 (https://creativecommons.org/licenses/by-sa/3.0)]](https://commons.wikimedia.org/wiki/File:Image_circle.jpg)
