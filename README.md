# LTC-CloudUploader_CLI



## Overview

This Bash script provides a simple and efficient way to upload files from your local system to Azure Blob Storage. The script utilizes Azure Storage REST API to interact with Azure Blob Storage.
![clouduploader](https://github.com/user-attachments/assets/e1065aad-2b6e-40b1-98b1-fc0c7e1fb0d6)


## Prerequisites

>Before using the script, ensure you have the following:

**1. Azure Account:** Signup for azure free account if you don't have.<br>
**2. Azure Storage Account:** Create a storage account on the Azure portal. <br>
**3. Azure Storage Explorer (Optional):** Use the Azure Storage Explorer to manage and explore your Azure Storage resources.

## Setup

>**Azure Storage Account Setup:**

Go to the Azure portal. <br>
Create a new Storage Account or use an existing one.<br>
Configure Azure Storage Account Credentials:
> The following credential will be asked on running script: <br>
>1.Azure Storage Account Name <br>
>2.Azure Storage Account Key <br>
>3.Target Container Name <br>

## **How To Use**
**1.** Clone the Repository:<br>
```
sudo dnf install -y git
git clone https://github.com/krvsc/LTC-CloudUploader_CLI.git
```

**2.** Run the cmd 
```
az login
```

**3.** Run the Script:

>Note: Make the script executable:
```
chmod +x CloudUploader.sh
```

**4.** Run the script with the local file path and the desired Azure Blob Storage destination path:
```
bash CloudUploader.sh /path/to/local/file.*
```

## Example

```
bash CloudUploader.sh ~/Documents/sample.txt 
```
This command will upload the sample.txt file from your local system to the container in Azure Blob Storage.

## [Blog](https://blogs.vijaysingh.cloud/project-streamlining-file-uploads-to-azure-blob-storage-with-ltc-clouduploadercli)
### Contribution

Feel free to contribute to this project by opening issues or submitting pull requests. <br>

>I would greatly appreciate your contribution to enhance this script for multi-cloud and multifile uploading.

## License
This project is licensed under the MIT License. See the LICENSE file for details.
