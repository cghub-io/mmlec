# Camera Tracking

## Camera Tracking in 3DEqualizer

- 2D Point Tracking
    1. 좋은 2D Track
        - 수명이 길다
        - 근경, 중경, 원경에 골고루 분포되어 있다
    1. 나쁜 2D Track
        - 수명이 짧다
        - 한곳에 몰려있다
        - 바들바들 거린다
        - 밀린다

- Solving
    - Set Film Back
    - Set Focal Length
    - Calc >> Calc All From Scratch... <kbd>Alt+C</kbd>
    - 좋은 솔브
        1. Curve Editor에서 Rot/Pos XYZ가 노이즈 없이 스무스하게 나온다
        1. Deviation Browser에서 Deviation Curve 모양이 바닥과 평행하게 나온다
            - 모션블러가 심한 구간은 어쩔수 없이 스파이크(spike)가 생긴다
        1. Lineup Controls(F5)에서 포인트를 잡고 Center3D 했을때 밀리지 않는다

- Focal Length & Lens Distortion & Parameter Adjustment
    - Focal Length / 21mm ~ 30mm / 10 samples
        ```
        FL - 21mm >> Alt+C >> Deviation
        FL - 22mm >> Alt+C >> Deviation
        FL - 23mm >> Alt+C >> Deviation
        FL - 24mm >> Alt+C >> Deviation
        FL - 25mm >> Alt+C >> Deviation
        FL - 26mm >> Alt+C >> Deviation
        FL - 27mm >> Alt+C >> Deviation
        FL - 28mm >> Alt+C >> Deviation
        FL - 29mm >> Alt+C >> Deviation
        FL - 30mm >> Alt+C >> Deviation
        ```
    - Distortion - Degree2 / 0.0010 ~ 0.0100 / 10 samples
        ```
        D2 - 0.0010 >> Alt+C >> Deviation
        D2 - 0.0020 >> Alt+C >> Deviation
        D2 - 0.0030 >> Alt+C >> Deviation
        D2 - 0.0040 >> Alt+C >> Deviation
        D2 - 0.0050 >> Alt+C >> Deviation
        D2 - 0.0060 >> Alt+C >> Deviation
        D2 - 0.0070 >> Alt+C >> Deviation
        D2 - 0.0080 >> Alt+C >> Deviation
        D2 - 0.0090 >> Alt+C >> Deviation
        D2 - 0.0100 >> Alt+C >> Deviation
        ```    
    - 10 samples(FL) X 10 samples(D2) = 100 samples
        ```
        FL - 21mm & D2 - 0.0010 >> Alt+C >> Deviation
        FL - 22mm & D2 - 0.0010 >> Alt+C >> Deviation
        FL - 23mm & D2 - 0.0010 >> Alt+C >> Deviation
        FL - 24mm & D2 - 0.0010 >> Alt+C >> Deviation
        FL - 25mm & D2 - 0.0010 >> Alt+C >> Deviation
        FL - 26mm & D2 - 0.0010 >> Alt+C >> Deviation
        FL - 27mm & D2 - 0.0010 >> Alt+C >> Deviation
        FL - 28mm & D2 - 0.0010 >> Alt+C >> Deviation
        FL - 29mm & D2 - 0.0010 >> Alt+C >> Deviation
        FL - 30mm & D2 - 0.0010 >> Alt+C >> Deviation
        ---------------------------------------------
        FL - 21mm & D2 - 0.0020 >> Alt+C >> Deviation
        FL - 22mm & D2 - 0.0020 >> Alt+C >> Deviation
        FL - 23mm & D2 - 0.0020 >> Alt+C >> Deviation
        .
        .
        .
        ```

- Exporting 3DE Scene to Maya
    1. Export Scene
        - 3DE4 >> Export Project >>> Maya...
    1. Export Undistorted Plates
        - 3DE4 >> Run Warp4...

## Camera Tracking in Maya
- Preference
    - Evaluation Mode <kbd>DG</kbd>
        - Maya2017 이하 버젼에서는 Evaluation Mode가 DG로 설정되어 있지 않으면 이미지플랜 관련 버그가 발생한다.
        > ![](../img/week3/evaluation_mode.png)

- Modeling Set Geometry
    - Holdout
    - Point Triangulation

- Preview
    - Playblast

## Lens Distortion Workflow
