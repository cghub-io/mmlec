# Object Tracking

## Intro
1. 평평한 땅을 직선으로 달리는 자동차를 매치무브 하려고 한다
    > ![](../img/week4/object_tracking_concept-optimize.gif)<br>
1. 오브젝트에만 2D Point들을 찍어서 솔브한다
    1. 오브젝트는 가만히 있고 카메라가 움직인다
    1. Point Group을 `Object`로 바꾼다
    1. 카메라는 가만히 있고 오브젝트가 움직인다
    
---

1. 우선 플레이트의 내용물을 두 그룹으로 나누어 보자
    1. Ground >> Camera Tracking
        > ![](../img/week4/ground_only-optimize.gif)<br>
    1. Car >> Object Tracking
        > ![](../img/week4/car_only-optimize.gif)<br>
1. Camera Tracking
1. Object Tracking
1. Parent Constraint

## Object Tracking in 3DEqualizer

- Camera Tracking

- Create Point Group

- 2D Point Tracking

- Solving

- Exporting

## Object Tracking in Maya
