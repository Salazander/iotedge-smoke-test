# Description
>Where there is smoke, there is fire.

This repo contains sample scripts and CI-pipelines that perform smoke tests on an Azure IoT Edge solution.

# Required Azure infrastructure
- 1x IoTHub with support for IoT Edge
- 1x Edge device registration

# Get started on your local machine
1. Install VS Code (tested with v1.62).
2. Install Docker (tested on Windows with Docker Desktop 4.1.1 69879).
3. Open folder `iotedge-smoke-test/SmokeTestIoTEdgeSolution` in VS Code.
4. Open solution in devcontainer (definition is located in `iotedge-smoke-test/SmokeTestIoTEdgeSolution/.devcontainer/`).
5. Configure the IoT Edge device connection string by adding the following line to the `.env` file

    `DEVICE_CONNECTION_STRING='<replace-with-connection-string-to-your-edge-device>'`

6. Run predefined task named `Run Smoke Tests`.
7. The task will report errors produced by `BuggyModule`, which is what the smoke tests were designed for.

# Get started in Azure Devops
1. Add group `ci-pipeline` to `Pipelines->Library`
2. Add secret `DEVICE_CONNECTION_STRING` and set the value your edge device's connection string
3. Add `iotedge-smoke-test/.azdo/pipelines/run-smoke-tests.yml` as pipeline

# Get started in GitHub
1. Add repository secret `DEVICE_CONNECTION_STRING` and set the value your edge device's connection string
2. Add `iotedge-smoke-test/.github/workflows/run-smoke-tests.yml` as workflow

# Team (alphabetical)
@Ioana37
@machteldbogels
@MagdaPaj
@Salazander
@syedhassaanahmed
@vjrantal
