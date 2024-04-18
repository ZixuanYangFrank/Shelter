# Assessing Daily Shelter Availability in Toronto: An Occupancy and Capacity Analysis

## Overview

This repo provides how to reproduce my work on the "Assessing Daily Shelter Availability in Toronto: An Occupancy and Capacity Analysis"



This repo provides you with a foundation to reproduce the results.

## File Structure

The repo is structured as:

data/raw_data contains the data sources used in analysis including the raw data Daily shelter overnight occupancy.csv from the Toronto open data portal

data/analysis_data contains the cleaned dataset that was constructed, that is used to build the model and plots. 

other/llm contains the llm usage details

other/sketches contains the sketches of the structure of the dataset by hand, it also include the distribution of capacity of the shelters.


The paper folder includes the essential files utilized in its creation, comprising the Quarto document and the reference bibliography file, along with the PDF output of the paper.


The scripts folder contains the R scripts used to simulation, download, clean data,  test and replication code. 

Shelter_model.rds  is the regression results. 


## Statement on LLM usage

Aspects of the code were written with the help of the autocomplete tool, OPENAI chatGPT 3.5. I asked for the definition of Bayesian analysis model and ask for a short explaination which has been used in the paper. 
