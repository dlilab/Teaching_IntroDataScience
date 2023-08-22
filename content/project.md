---
date: "2021-07-25"
title: Final project
---

## Final project objective

The objective of the final project will be to build a fully reproducible project that uses data to address a scientific questions of your choice. The data can be from your own research or online open datasets. It can be individual or collaborative (with another classmate). Since this course is an advanced undergraduate/graduate student level course, I expect that the final report should be publishable. The project should have all of the following components:

- A `README` file to briefly introduce the project idea and how it is organized
- A `LICENSE` file
- Well documented R code to download (if from online datasets), read, explore, and clean data; all processes should be automated and no hand edit on raw data
- Well documented R code to manipulate, wrangle, visualize data
- Well documented R code to run statistical models and make publication-worthy figures or tables
- Final report written as a RMarkdown file and it should be structured with Introduction, Methods and Materials, Results, Discussion, and Conclusions
- A clean and clear final presentation of the question, the workflow, results, and explanation
- The whole project should be hosted on GitHub (or similar programs such as GitLab) and be version controlled from day 1
- I should be able to reproduce your workflow and regenerate your final report; if the raw dataset is too big or sensitive to be hosted online, discuss with me about potential pathways to proceed

## Final project topic selection

Despite that we will have the whole semester to build the final project, we need to select project topics as soon as possible. A project proposal, with research questions and identified data sources, is due by ***September 30, 2023***. Therefore, students are encouraged to discuss potential ideas with me (and your advisor if needed) as soon as possible. The project proposal should include the following components:

- Title
- Name(s)
- A brief description of the research topic, including some background and why it is important and what we know/don't know about it (knowledge gap)
- A brief description of the data required, and how would you get such data (via your own research, or online datasets with URL/DOI)
- A list of questions and corresponding analysis tasks you plan to do

The project proposal should be named as `proposal.md` and should be hosted at the root of your GitHub project repository.

## Final project (25 points) grading rubric

- Project proposal (5 points): should be turned in on time and student should have discussed with me before submission
- Project implementation (15 points):
    + Clear and well organized project structure (5 points)
    + Code are well documented and address the proposed research questions appropriately (5 points)
    + Final report is well written, reproducible, with figures and tables to communicate major findings; overall, it should be publishable later (5 points)
    + We will plan to peer-review other groups' projects
- Presentation (5 points): presentation should be well structured, engaging and easy to follow. Don't stack it with texts.

### Final report structure

The final report should be formatted as a manuscript for a journal in your field. Generally, it includes the following sections.

- Introduction: this section will be around 4-5 well-cited paragraphs
    + Introduce the research problem and explain why it is important
    + What do we know about it so far? Who has done what?
    + What is the knowledge gap? How can we fill or narrow it?
    + Purpose of the study: you are trying to fill the above knowledge gap; and what are your specific questions/hypotheses?
- Methods and Materials
    + Describe your data sources
    + Describe your analyses with enough details so that others can repeat it
    + For this course, you should also include R chunks to import, explore, clean, visualize, and model data (you can simply use code like `source("code/01_data_import.R")` and put your actual code there)
- Results
    + Report your key findings (no interpretation or explanation yet, save that for the Discussion)
    + Results such as statistics should be coded and not entered manually
    + Include R chuck to generate publication-worthy figures and tables, with captions
- Discussion: this section will be around 4-6 paragraphs that
    + Provide a summary of your major finding
    + Your interpretation and explanation of results, with citations
    + Compare and contrast your results with other similar studies
    + Discuss limitations of your study and potential future directions
- Conclusions: this section is optional for some journals, it summarizes the conclusion of your study and tell readers your main take home message

#### Some short resources for scientific writing:

- [Scientific Writing Made Easy: A Step-by-Step Guide to Undergraduate Writing in the Biological Sciences](https://esajournals.onlinelibrary.wiley.com/doi/full/10.1002/bes2.1258)
- [Improving the writing of research papers: IMRAD and beyond](http://leml.asu.edu/jingle/Wu-Publications-PDFs/2011/Wu-2011-ScientificWriting.pdf)
- Other suggestions? [Edit this page](https://github.com/dlilab/Teaching-IntroDataScience/blob/main/content/project.md) and make a pull request!





