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

 # agile-azure-project
This is the repo for the Agile Development with Azure. https://github.com/Camilafabiani87/Azure-Agile-Project/tree/main

![Python application test with Github Actions] ![Alt text](image.png)
![GitHub Actions](image-1.png)

## 4. Clone the Repository in Azure

  - Log in to the [Azure Portal](https://portal.azure.com/#home).

  - Open a terminal in Azure.

  - Clone the GitHub repository in Azure using the `git clone` command. Replace `https://github.com/Camilafabiani87/CI-CD-Pipeline-Project` with the actual URL of your GitHub repository:

    ```bash
    git clone https://github.com/Camilafabiani87/CI-CD-Pipeline-Project
    ```

You're all set! You now have your GitHub repository set up and connected to Azure. 


* Project running on Azure App Service


* Project cloned into Azure Cloud Shell

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


* Output of a test run

* Successful deploy of the project in Azure Pipelines.  [Note the official documentation should be referred to and double checked as you setup CI/CD](https://docs.microsoft.com/en-us/azure/devops/pipelines/ecosystems/python-webapp?view=azure-devops).
![Alt text](image-2.png)

* Running Azure App Service from Azure Pipelines automatic deployment
![Alt text](image-3.png)
![Alt text](image-1.png)

* Successful prediction from deployed flask app in Azure Cloud Shell.  [Use this file as a template for the deployed prediction](https://github.com/udacity/nd082-Azure-Cloud-DevOps-Starter-Code/blob/master/C2-AgileDevelopmentwithAzure/project/starter_files/flask-sklearn/make_predict_azure_app.sh).
The output should look similar to this:

```bash
udacity@Azure:~$ ./make_predict_azure_app.sh
Port: 443
{"prediction":[20.35373177134412]}
```

* Output of streamed log files from deployed application

> 

## Enhancements

<TODO: A short description of how to improve the project in the future>

## Demo 

<TODO: Add link Screencast on YouTube>


