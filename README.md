# Overview
This project involves the development of a CI/CD Pipeline. Initially, we will create it using GitHub Actions in combination with a Makefile, requirements, and application code. Subsequently, we will connect this to Azure Pipelines while utilizing the Flask web framework

<TODO>

## Project Plan
<TODO: Project Plan

* A link to a Trello board for the project: https://trello.com/b/O8gwgfRv/project
* A link to a spreadsheet that includes the original and final project plan: https://docs.google.com/spreadsheets/d/1zk9uDbzFqprfJLEdZBKMihjr-zKj8dO9t_13c_ZwtZU/edit#gid=0

## Instructions

<TODO:  
* Architectural Diagram (Shows how key parts of the system work)>

<TODO:  Instructions for running the Python project.  How could a user with no context run this project without asking you for any help.  Include screenshots with explicit steps to create that work. Be sure to at least include the following screenshots:

# Instructions for Setting Up a GitHub Repository with Azure

Follow these steps to set up a repository on GitHub and connect it to Azure:

## 1. Create a New Repository on GitHub

  - Open your web browser and visit [GitHub](https://github.com/).
  - Log in to your GitHub account.
  - Click the "New" button to create a new repository.
  - Follow the instructions on GitHub to set up the repository, giving it a name and description if necessary.

   # agile-azure-project
  This is the repo for the Agile Development with Azure. https://github.com/Camilafabiani87/Azure-Agile-Project/tree/main

  ![New project in GitHub](https://github.com/Camilafabiani87/CD-CI-Project/blob/main/img/image-4.png)
  

## 2. Generate an SSH Key for Communication with GitHub

  - Open your terminal or command line.
  - Run the following command to generate a new SSH key:

    ```bash
    ssh-keygen -t rsa -C "example@mail.com"
    ```

  - This command will generate a new SSH key and prompt you to choose a location to save it. By default, it will be saved in `~/.ssh/id_rsa`.

  - Once the key is generated, display the contents of the public key using:

    ```bash
    cat ~/.ssh/id_rsa.pub
    ```

  - Copy the SSH key that is displayed in the console.

## 3. Add the SSH Key to Your GitHub Account

  - Visit the settings page of your GitHub account.

    1. Click on your avatar in the upper right corner.
    2. Select "Settings" from the dropdown menu.
    3. On the left sidebar, choose "SSH and GPG keys."
    4. Click "New SSH key."
    5. Paste the SSH key you copied in the previous step.
    6. Give the key a descriptive name if desired.
    7. Click "Add SSH key" to save it.

    ![SSH KEY IN GITHUB](https://github.com/Camilafabiani87/CD-CI-Project/blob/main/img/image-5.png)
    ![Files in the new repository](https://github.com/Camilafabiani87/CD-CI-Project/blob/main/img/image-6.png)

### CI: Configure github actions

 Go to actions in the repository and create a yml file (be sure you set up a python's version available) and verify that the tests pass. You can also paste the status badge in the readme file.

 ![GitHub Acions](https://github.com/Camilafabiani87/CD-CI-Project/blob/main/img/image-7png.png)


## 4. Clone the Repository in Azure

  - Log in to the [Azure Portal](https://portal.azure.com/#home).

  - Open a terminal in Azure.

  - Clone the GitHub repository in Azure using the `git clone` command. Replace `https://github.com/Camilafabiani87/CD-CI-Project` with the actual URL of your GitHub repository:

    ```bash
    git clone https://github.com/Camilafabiani87/CD-CI-Project
    ```

You're all set! You now have your GitHub repository set up and connected to Azure. 


# Instructions for Setting Up a Python Virtual Environment and Running "make all"

Follow these steps to create a Python virtual environment, activate it, and run the "make all" command:

## 1. Create a Python Virtual Environment

  - Open your terminal or command line.

  - Run the following command to create a Python virtual environment (replace `~/.myrepo` with your preferred virtual environment path):

    ```bash
    python3 -m venv ~/.myrepo
    ```

  - This command will create a virtual environment in the specified directory.

## 2. Activate the Virtual Environment

  - To activate the virtual environment, run the following command:

    ```bash
    source ~/.myrepo/bin/activate
    ```

  - Your terminal prompt should now change to indicate that the virtual environment is active.

## 3. Run "make all"

  - Navigate to the directory where you want to execute the "make all" command. Make sure you are within the activated virtual environment.

  - Run the "make all" command:

    ```bash
    make all
    ```

  - This will execute the "make all" target or command. Make sure your project's Makefile contains the necessary instructions for this step.

* Passing tests that are displayed after running the `make all` command from the `Makefile`
![Make All passed](https://github.com/Camilafabiani87/CD-CI-Project/blob/main/img/image.png)

You've successfully created a Python virtual environment, activated it, and run the "make all" command. Your project should now be set up and ready for further development or building.

# Instructions for Continuos Delivery on Azure

## 1. Clone a new repository with the flask code application or replace the files of the one already created. Then, create a virtual environment and install all the packages needed.
![GitHub Clone](https://github.com/Camilafabiani87/CD-CI-Project/blob/main/img/shhClone.png)

## 3. Create the webapp with the following command az webapp up -n myweb87 -l westeurope --resource-group Azuredevops. You can change the name and configurations as needed.
![az web](https://github.com/Camilafabiani87/CD-CI-Project/blob/main/img/myweb87.png)

## 4. Give permissions with the chmod +x make_predict_azure_app.sh command and run the prediction file like this ./make_predict_azure_app.sh.
![Predictions](https://github.com/Camilafabiani87/CD-CI-Project/blob/main/img/predict.png)

## 5. You can stream the logs of the webapp with the following command az webapp log tail.
![Logs](https://github.com/Camilafabiani87/CD-CI-Project/blob/main/img/logs.png)

## 6. Create some tests using locust and run them in your local terminal ./loadtesting.sh wich will run the locust file.
![Locust](https://github.com/Camilafabiani87/CD-CI-Project/blob/main/img/locust.png)
![Graphic](https://github.com/Camilafabiani87/CD-CI-Project/blob/main/img/graphic-locust.png)

## 7. Create a Devops organization from the Azure DevOps organizations service in the azure portal.
## 8. Go to settings and allow public project. Then, create a public project.
## 9. Create an access token and save it to use it in a forward step.
## 10. Create a service connection from the project settings.
## 11. Download an agent with the following command curl -O https://vstsagentpackage.azureedge.net/agent/3.227.2/vsts-agent-linux-x64-3.227.2.tar.gz. This one works for a Linux system.
## 12. Create a new directory and move into it, you can use this command mkdir myagent && cd myagent.
## 13. Extracts the downloaded documents like this tar zxvf ../vsts-agent-linux-x64-3.227.2.tar.gz.
## 14. Make the agent configuration, you will need to enter the devops organization url and the access token. Start the configuration with ./config.sh command.
![Azure](https://github.com/Camilafabiani87/CD-CI-Project/blob/main/img/azure-pipelines1.png)
![Azure2](https://github.com/Camilafabiani87/CD-CI-Project/blob/main/img/azure-pipelines2.png)
## 15. Create a pipeline for the project, select the repository and save and run the yml file. 
![Pipeline](https://github.com/Camilafabiani87/CD-CI-Project/blob/main/img/pipeline-deploy.png)

# Video





