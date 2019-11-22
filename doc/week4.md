# Object Tracking

## Problem
1. 평평한 땅을 직선으로 달리는 자동차를 매치무브 하려고 한다
    > ![](../img/week4/object_tracking_concept-optimize.gif)<br>
1. 오브젝트에만 2D Point들을 찍어서 솔브한다
    1. 오브젝트는 가만히 있고 카메라가 움직인다
        > ![](../img/week4/moving_camera_fixed_object.gif)<br>
    1. Point Group Type을 `Object`로 바꾼다
        > ![](../img/week4/point_group_type_object.png)<br>
    1. 카메라는 가만히 있고 오브젝트가 움직인다
        > ![](../img/week4/fixed_camera_moving_object.gif)<br>
    - 이렇게 Point Group Type까지 바꾸었는데도 자동차는 직선으로 움직이지 않고있다. 무엇이 문제일까?
    
## Answer
- 카메라 트래킹 없이 오브젝트 트래킹만 단독으로 작업했기 때문
1. 플레이트의 내용물을 두 그룹으로 나눈다
    1. Ground >> Camera Tracking
        > ![](../img/week4/ground_only-optimize.gif)<br>
    1. Car >> Object Tracking
        > ![](../img/week4/car_only-optimize.gif)<br>
1. Camera Tracking
1. Object Tracking
1. Parent Constraint

## In Depth

## Object Tracking in 3DEqualizer

- Camera Tracking

- Create Point Group

- 2D Point Tracking

- Solving

- Exporting

## Object Tracking in Maya
