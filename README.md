# Description
Where there's smoke, there's fire.
This repo contains sample scripts and CI-pipelines that perform smoke tests on an Azure IoT Edge solution.

# Get started on your local machine
1. Install VS Code (tested with v1.62).
2. Install Docker (tested on Windows with Docker Desktop 4.1.1 69879).
3. Open folder `iotedge-smoke-test/SmokeTestIoTEdgeSolution` in VS Code.
4. Open solution in devcontainer (definition is located in `iotedge-smoke-test/SmokeTestIoTEdgeSolution/.devcontainer/`).
5. Configure the IoT Edge device connection string by adding the following line to the `.env` file

    `DEVICE_CONNECTION_STRING=<replace-with-connection-string-to-your-edge-device>`
    
6. Run predefined task named `Run Smoke Tests`.
7. The task will report errors, which is what the smoke tests were designed for. There is something wrong in BuggyModule that gets picked up by the test.

# Team (alphabetical)
@Ioana37
@machteldbogels
@MagdaPaj
@Salazander
@syedhassaanahmed
@vjrantal
