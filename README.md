2024 한국 대학생 반도체 회로설계 경진대회 

참가자 정보 : 김준형, 권우석, 한소진, 한세진

- Layer_1, Layer_2, Layer_3, Layer_FC 폴더 내부 코드들과 tb_cnn_accelerator, cnn_accelerator 가 프로젝트를 구성하는 모든 모듈입니다.

- input_example 폴더 내부 txt파일은 예시 입력입니다. open은 눈이 떠진 상태, close는 눈이 감긴 상태이며 하나의 txt파일은 한쪽 눈에 대한 data입니다.

- weight_bias 폴더 내부 txt파일은 각 레이어에 대한 학습된 가중치와 편향치입니다. 시뮬레이션을 위해선 weight_bias 폴더 내부 파일들을 다운로드 받고
  conv1_calc, conv2_calc, conv3_calc, fully_connected, fully_connected2 모듈 내부에서 $readmemh 의 경로를 수정해야 합니다.

