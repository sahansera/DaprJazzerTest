# DaprJazzzerTest

This is where I conducted my testing to for Jazzer integration with the [Dapr Java SDK](https://github.com/dapr/java-sdk). This project currently uses autofuzz mode to discover edge cases of the provided binary. All binaries are downloaded from Maven thereby allowing this process to be run independently from the current build.

Contents:

- [Bash script](https://github.com/sahansera/DaprJazzerTest/blob/main/entrypoint.sh) to parse a given set of parameters such as target version, class, methods to invoke Docker containers with a host path mounted for each run of Jazzer.
- [GitHub Action](https://github.com/sahansera/DaprJazzerTest/blob/main/.github/workflows/jazzer-workflow.yml) workflow to invoke the whole process as part of CI with a build strategy matrix to parameterize each run.

An example run can be found [here](https://github.com/sahansera/DaprJazzerTest/actions/runs/1549565377)

![Screenshot](https://user-images.githubusercontent.com/2032296/145481329-a722d48b-bc58-4c2f-91a4-bb9c46ba04c3.png)
