{\rtf1\ansi\ansicpg1252\cocoartf2709
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh9240\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 # Use a base image\
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