Automationpractice - projekt do pracy licencjackiej

Software:
PyCharm Community Edition
Python 3.6 or newer
WebDrivers (geckodriver for firefox, chromedriver for Chrome) in $PATH (e.g. C:/bin)

Required:
Download & install Python 3
Install pip

Install:
pip install robot framework
pip install robotframework-seleniumlibrary
pip install robotframework-requests

Execution:
Run single test file: robot Tests/test.robot
Run single test case: robot -t testCaseName Tests/test.robot
Run whole test suite (based on parent directory): robot Tests./

External tool:
Name - robot
Program $ProjectFileDir$/venv/Scripts/robot.exe
Arguments -- variable local_config:$FileNameWithoutExtension$_config - d results/$FileNameWithoutExtensions$ tests/$FileName$
Working directory  $ProjectFileDir$
Execution right click on file with Test Case -> External Tools -> robot

Reults of tests are stored in /results directory.