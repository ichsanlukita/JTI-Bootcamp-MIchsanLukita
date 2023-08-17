{\rtf1\ansi\ansicpg1252\cocoartf2709
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs24 \cf0 \expnd0\expndtw0\kerning0
# Use a base image\
FROM node:18\
\
# Set the working directory\
WORKDIR  /usr/src/app\
\
# Copy package.json and package-lock.json\
COPY package*.json ./\
\
# Install dependencies\
RUN npm install\
\
# Copy the rest of the application code\
COPY . .\
\
# Expose the desired port\
EXPOSE 3000\
\
# Start the application\
CMD ["node" , "index.js"]}