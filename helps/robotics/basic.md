# Robotics Basic

## 커넥터(Connector)

커넥터는 로봇 기반 산업용 어플리케이션에 필요한 다양한 장치들을 등록하고 관리할 수 있도록 개별 장치 엔티티를 커넥터로서 등록하고 이를 관리할 수 있습니다.

각 커넥터는 별도의 엔드포인트(endpoint)와 설정 가능한 파라미터(parameter)를 가지고 있습니다.

- 엔드포인트: 동일한 장치를 개별적으로 구분하기 위한 특성 값으로 사용된다. 또한 엔드포인트는 해당 커넥터의 초기 연결에 필요한 값으로서도 사용된다. 커넥터 종류 중 하나인 camera-connector의 경우 OS에서 부여한 카메라의 번호이고, melsec-plc의 경우에는 네트워크 연결에 필요한 {IP:Port}가 엔드포인트로서 설정됩니다.
- 파라미터: 각 커넥터는 연결 시 혹은 동작 수행에 필요한 정보를 파라미터로서 가지고 있다. 커넥터 종류 중 하나인 camera-connector는 캘리브레이션에 필요한 메뉴 및 결과값 등을 파라미터로서 가지고 있다. 또한 협동 로봇 커넥터의 하나인 뉴로메카의 indydcp-connector는 물건을 집는(Object Picking) 동작에 필요한 Gripper Offset 등을 설정할 수 있는 오프셋을 가지고 있습니다.

각 엔드포인트와 파라미터 설정에 필요한 정보는 하위 메뉴의 커넥터의 링크를 클릭하면 확인할 수 있습니다.

### 카메라(camera)

협동 로봇의 눈의 역할을 하는 카메라에 대한 커넥터는 다음과 같습니다.
카메라 커넥터의 주요 역할은 사물의 위치를 카메라 좌표계로서 표현하고 이를 로봇 좌표계와 연동할 수 있는 기능들을 제공합니다.
카메라 커넥터는 별도의 태스크를 가지고 있지 않고, 주로 워크스페이스 등에서 지원되는 태스크의 입력으로서 사용됩니다.

- [camera-connector](./robotics/connector/camera-connector.md)
- [realsense-camera](./robotics/connector/realsense-camera.md)
- [azure-kinnect-camera](./robotics/connector/realsense-camera.md)

### 로봇(robot)

협동 로봇을 연결하기 위한 커넥터로서 카메라와 연계하기 위한 오프셋 등을 파라미터로 가지고 있습니다.

- [indydcp-connector](./integration-indydcp/connector/indydcp-connector.md)

### 오브젝트(marked-object)

협동 로봇을 이용한 피킹(Picking)과 같은 작업을 수행할 때 피킹의 대상이 되는 오브젝트를 정의합니다.
만약, 해당 오브젝트가 아르코 마커(aruco marker)의 경우에는 엔드포인트는 마커의 번호가 됩니다. 박스와 같이 별도의 부여하기 위한 번호 등이 없다면 임의의 엔드포인트를 지정하면 됩니다.
오브젝트는 피킹에 필요한 오프셋 등의 파라미터를 가지고 있습니다.

- [marked-object](./robotics/connector/marked-object.md)

### 워크스페이스(tracking-workspace)

워크스페이스는 협동 로봇, 카메라, 오브젝트들을 이용하는 환경을 지정하는 논리적인 개념으로서 현재 워크스페이스는 하나의 도메인에서 하나만 설정이 가능합니다.

- [tracking-workspace](./robotics/connector/workspace.md)

### Communication Interface

산업용 어플리케이션에서 많이 활용하는 인터페이스를 지원합니다.

- [modbus-tcp](./integration/connector/modbus-tcp.md)
- [mqtt-connector](./integration/connector/mqtt-connector.md)

### PLC

산업용 PLC를 연결하고 PLC에서 요구되는 다양한 데이터 송수신 포맷을 지원합니다.

- [melsec-plc](./integration/connector/melsec-plc.md)

### Database

활용도가 높은 데이터베이스를 지원합니다.

- [postgresql-connector](./integration/connector/postgresql-connector.md)
- [oracle-connector](./integration/connector/oracle-connector.md)
- [mssql-connector](./integration/connector/mssql-connector.md)
- [sqlite-connector](./integration/connector/sqlite-connector.md)

## 태스크(Task)

### 워크스페이스 태스크

- [tracking-workspace-get-object-state](./robotics/task/tracking-workspace-get-object-state.md)
- [tracking-workspace-get-roi-count](./robotics/task/tracking-workspace-get-roi-count.md)
- [tracking-workspace-get-roi-state](./robotics/task/tracking-workspace-get-roi-state.md)
- [tracking-workspace-wait-for-roi](./robotics/task/tracking-workspace-wait-for-roi.md)

### 오브젝트 태스크

- [trackable-object-get-state](./robotics/task/trackable-object-get-state.md)
- [trackable-object-wait-for-move](./robotics/task/trackable-object-wait-for-move.md)

### 로봇 태스크(indydcp-connector)

- [indydcp-ais](./integration-indydcp/task/indydcp-ais.md)
- [indydcp-ao](./integration-indydcp/task/indydcp-ao.md)
- [indydcp-control](./integration-indydcp/task/indydcp-control.md)
- [indydcp-di-wait](./integration-indydcp/task/indydcp-di-wait.md)
- [indydcp-dis](./integration-indydcp/task/indydcp-dis.md)
- [indydcp-do](./integration-indydcp/task/indydcp-do.md)
- [indydcp-finish-teaching-mode](./integration-indydcp/task/indydcp-finish-teaching-mode.md)
- [indydcp-get-task-pose](./integration-indydcp/tget-task-pose/indydcp-get-task-pose.md)
- [indydcp-home](./integration-indydcp/task/indy-home.md)
- [indydcp-move-by-pose](./integration-indydcp/task/indydcp-move-by-pose.md)
- [indydcp-move-to-pose](./integration-indydcp/task/indydcp-move-to-pose.md)
- [indydcp-move-to-pick](./integration-indydcp/task/indydcp-move-to-pick.md)
- [indydcp-move](./integration-indydcp/task/indydcp-move.md)
- [indydcp-reset](./integration-indydcp/task/indydcp-reset.md)
- [indydcp-set-speed](./integration-indydcp/task/indydcp-set-speed.md)
- [indydcp-start-teaching-mode](./integration-indydcp/task/indydcp-start-teaching-mode.md)
- [indydcp-status](./integration-indydcp/task/indydcp-status.md)
- [indydcp-zero](./integration-indydcp/task/indydcp-zero.md)

### 커넥터가 필요 없는 태스크

- [adjust-pose](./robotics/task/adjust-pose.md)

## 캘리브레이션(Calibration)

카메라를 사용하는 로봇 어플리케이션에서 필수적으로 요구되는 카메라 및 핸드아이 캘리브레이션은 다음의 개별 링크를 통해서 확인할 수 있습니다.

- [카메라 캘리브레이션](./robotics/calibration/camera-calibration.md)

- [핸드아이 캘리브레이션](./robotics/calibration/handeye-calibration.md)

## 시나리오 구성 예

### 로봇 피킹 시나리오 구성 예제

- [오브젝트 중심의 피킹 시나리오 예](./robotics/examples/wait-for-move-scenario.md)
- [카메라 중심의 피킹 시나리오 예](./robotics/examples/ws-get-roi-state-scenario.md)
- [시나리오 큐 기반의 피킹 시나리오 예](./robotics/examples/scenario-queue-scenario.md)
