#! /bin/sh

##############################
# 本脚本使用 appledoc 生成 docset.
##############################

echo "\n=================================================="
echo "Action - sdkSampleDoc"

# 引用公共的文件
source Scripts/common.sh

if [ ! $SDK_REPO_DIR ]; then
    echo "SDK_REPO_DIR not exist. Exit.";
    exit 1;
fi

if [ ! $SDK_PROJECT_NAME ]; then
    SDK_PROJECT_NAME="sdkSample-iOS-SDK"
fi
if [ ! $SDK_DOCS_DIR ]; then
    SDK_DOCS_DIR="${SDK_REPO_DIR}/build/appledoc"
fi


PROJECT_DIR=sdkSample-framework
PROJECT_NAME="${SDK_PROJECT_NAME}"
headersDir=$PROJECT_DIR/API
company="DYH";
companyID="cn.sdkSample";
companyURL="http://www.jianshu.com/users/a4b11b398b1e/timeline";
target="iphoneos";
#target="macosx";
outputPath="${SDK_DOCS_DIR}";
if [ ! -d $outputPath ]; then
    mkdir $outputPath
fi

echo "The output dir: $outputPath"



/usr/local/bin/appledoc \
--project-name "${PROJECT_NAME}" \
--project-company "${company}" \
--company-id "${companyID}" \
--docset-atom-filename "${company}.atom" \
--docset-feed-url "${companyURL}/${company}/%DOCSETATOMFILENAME" \
--docset-package-url "${companyURL}/${company}/%DOCSETPACKAGEFILENAME" \
--docset-fallback-url "${companyURL}/${company}" \
--docset-platform-family "${target}" \
--docset-copyright "DYH 版权所有 ©2016 " \
--docset-bundle-filename "${PROJECT_NAME}.docset" \
--output "${outputPath}" \
--use-code-order \
--publish-docset \
--logformat xcode \
--keep-intermediate-files \
--no-repeat-first-par \
--no-warn-invalid-crossref \
--exit-threshold 2 \
"${headersDir}" \
#"${headersDir}/xxxxxxx" \

### Appledoc exit code definitions
# 0 for success
# 1 if a warning was logged
# 2 if error was logged (not really used currently)
# 3 if fatal was logged (not really used currently)
# 250 on crash


# Copy html docs into dist for publish 
cd $SDK_REPO_DIR/dist
zipDir="sdkSample_ios_appledoc_html"
mv "${SDK_DOCS_DIR}/html" $zipDir
zip -r $zipDir.zip $zipDir


