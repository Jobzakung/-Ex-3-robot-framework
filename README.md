# Setting Up Environment and Running Test Cases
## Creating the Environment
1. **Install Python**: Ensure Python is installed on your system. You can download it from [python.org](https://www.python.org/).
2. **Set up a Virtual Environment**:
    ```bash
    python -m venv env
    ```
3. **Activate the Virtual Environment**:
    - On Windows:
      ```bash
      .\env\Scripts\activate
      ```
    - On macOS/Linux:
      ```bash
      source env/bin/activate
      ```
4. **Install Robot Framework**:
    ```bash
    pip install robotframework
    ```

## Running Test Cases
1. **Create a Test File**: Write your test cases in a `.robot` file.
2. **Run the Test Cases**:
    ```bash
    robot <test_file_name>.robot
    ```
3. **View Results**: After execution, check the `output.xml`, `log.html`, and `report.html` files generated in the same directory.

For more details, visit the [Robot Framework Documentation](https://robotframework.org/).