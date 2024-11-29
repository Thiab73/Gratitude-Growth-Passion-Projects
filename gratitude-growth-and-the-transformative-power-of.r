{
 "cells": [
  {
   "cell_type": "code",
   "execution_count": 1,
   "id": "88cf3f51",
   "metadata": {
    "_execution_state": "idle",
    "_uuid": "051d70d956493feee0c6d64651c6a088724dca2a",
    "execution": {
     "iopub.execute_input": "2024-11-29T04:05:02.064430Z",
     "iopub.status.busy": "2024-11-29T04:05:02.062198Z",
     "iopub.status.idle": "2024-11-29T04:05:03.453625Z",
     "shell.execute_reply": "2024-11-29T04:05:03.451632Z"
    },
    "papermill": {
     "duration": 1.399078,
     "end_time": "2024-11-29T04:05:03.456223",
     "exception": false,
     "start_time": "2024-11-29T04:05:02.057145",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "── \u001b[1mAttaching core tidyverse packages\u001b[22m ──────────────────────── tidyverse 2.0.0 ──\n",
      "\u001b[32m✔\u001b[39m \u001b[34mdplyr    \u001b[39m 1.1.4     \u001b[32m✔\u001b[39m \u001b[34mreadr    \u001b[39m 2.1.5\n",
      "\u001b[32m✔\u001b[39m \u001b[34mforcats  \u001b[39m 1.0.0     \u001b[32m✔\u001b[39m \u001b[34mstringr  \u001b[39m 1.5.1\n",
      "\u001b[32m✔\u001b[39m \u001b[34mggplot2  \u001b[39m 3.5.1     \u001b[32m✔\u001b[39m \u001b[34mtibble   \u001b[39m 3.2.1\n",
      "\u001b[32m✔\u001b[39m \u001b[34mlubridate\u001b[39m 1.9.3     \u001b[32m✔\u001b[39m \u001b[34mtidyr    \u001b[39m 1.3.1\n",
      "\u001b[32m✔\u001b[39m \u001b[34mpurrr    \u001b[39m 1.0.2     \n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "── \u001b[1mConflicts\u001b[22m ────────────────────────────────────────── tidyverse_conflicts() ──\n",
      "\u001b[31m✖\u001b[39m \u001b[34mdplyr\u001b[39m::\u001b[32mfilter()\u001b[39m masks \u001b[34mstats\u001b[39m::filter()\n",
      "\u001b[31m✖\u001b[39m \u001b[34mdplyr\u001b[39m::\u001b[32mlag()\u001b[39m    masks \u001b[34mstats\u001b[39m::lag()\n",
      "\u001b[36mℹ\u001b[39m Use the conflicted package (\u001b[3m\u001b[34m<http://conflicted.r-lib.org/>\u001b[39m\u001b[23m) to force all conflicts to become errors\n"
     ]
    },
    {
     "data": {
      "text/html": [
       "'passion-and-growth-chart'"
      ],
      "text/latex": [
       "'passion-and-growth-chart'"
      ],
      "text/markdown": [
       "'passion-and-growth-chart'"
      ],
      "text/plain": [
       "[1] \"passion-and-growth-chart\""
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# This R environment comes with many helpful analytics packages installed\n",
    "# It is defined by the kaggle/rstats Docker image: https://github.com/kaggle/docker-rstats\n",
    "# For example, here's a helpful package to load\n",
    "\n",
    "library(tidyverse) # metapackage of all tidyverse packages\n",
    "\n",
    "# Input data files are available in the read-only \"../input/\" directory\n",
    "# For example, running this (by clicking run or pressing Shift+Enter) will list all files under the input directory\n",
    "\n",
    "list.files(path = \"../input\")\n",
    "\n",
    "# You can write up to 20GB to the current directory (/kaggle/working/) that gets preserved as output when you create a version using \"Save & Run All\" \n",
    "# You can also write temporary files to /kaggle/temp/, but they won't be saved outside of the current session"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "da30ec40",
   "metadata": {
    "papermill": {
     "duration": 0.002378,
     "end_time": "2024-11-29T04:05:03.461321",
     "exception": false,
     "start_time": "2024-11-29T04:05:03.458943",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# Gratitude, Growth, and the Transformative Power of Passion Projects\r\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "fadbcd74",
   "metadata": {
    "papermill": {
     "duration": 0.002214,
     "end_time": "2024-11-29T04:05:03.466023",
     "exception": false,
     "start_time": "2024-11-29T04:05:03.463809",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## Introduction\r\n",
    "As the season of gratitude unfolds, I find myself reflecting on the interconnected paths of my career...\r\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "5d8339f8",
   "metadata": {
    "papermill": {
     "duration": 0.002097,
     "end_time": "2024-11-29T04:05:03.470325",
     "exception": false,
     "start_time": "2024-11-29T04:05:03.468228",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## From Data to Wellness\n",
    "My work in data analytics has taught me to uncover patterns, solve complex problems, and turn raw  information into actionable insights. It’s incredibly fulfilling to bring clarity to chaos and help  organizations make informed decisions. But what I’ve learned from my wellness and transformational  pursuits has been just as powerful: \r\n",
    "• The Importance of Balance: Wellness has shown me that success isn’t just about hitting  metrics—it’s about creating harmony between ambition and self-care. \r\n",
    "• The Power of Empathy: Transformation work reminds me that behind every data point  is a human story. \r\n",
    "• The Strength in Resilience: Wellness journeys require patience and determination,  qualities that have also propelled my career forward. \r\n",
    "Together, these experiences have shaped me into someone who’s not just a skilled professional but a  well-rounded, mission-driven individul. \r\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "e92fa794",
   "metadata": {
    "papermill": {
     "duration": 0.002156,
     "end_time": "2024-11-29T04:05:03.474662",
     "exception": false,
     "start_time": "2024-11-29T04:05:03.472506",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## Why I’m Grateful for My Passions\n",
    "Pursuing passions outside of work—whether it’s teaching wellness practices, guiding transformational  journeys, or diving deep into analytics—has taught me invaluable lessons. Here are a few things I’m  especially grateful for this year: \r\n",
    "1. Seeing the Bigger Picture: \r\n",
    "My work in data helps me see connections between details, while my focus on  transformation reminds me to look at the whole person or system. This dual lens allows  me to approach problems with creativity and compassion.\r\n",
    "2. A Renewed Commitment to Growth: \r\n",
    "Whether analyzing trends or guiding someone through a wellness journey, the goal is  the same: to spark meaningful change. I’m grateful for the opportunity to grow—and  help others grow—every day. \r\n",
    "3. Gratitude for Alignment: \r\n",
    "Balancing analytics and wellness has helped me find a sense of alignment in my life.  \r\n",
    "Each area informs and strengthens the other, creating a cycle of continuous learning  and giving. \r\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "0c9d723b",
   "metadata": {
    "jupyter": {
     "source_hidden": true
    },
    "papermill": {
     "duration": 0.002064,
     "end_time": "2024-11-29T04:05:03.478889",
     "exception": false,
     "start_time": "2024-11-29T04:05:03.476825",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "The chart below highlights how time spent on passion projects correlates with  key professional benefits like creativity, time management, and job satisfaction \r",
    "![Passion and Growth Chart](../input/passion-growth-chart/passion_growth_chart.png)\r\n",
    "\n",
    "\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "1ab4316d",
   "metadata": {
    "papermill": {
     "duration": 0.002092,
     "end_time": "2024-11-29T04:05:03.483103",
     "exception": false,
     "start_time": "2024-11-29T04:05:03.481011",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## A Call for Change\n",
    "This season, I’m reflecting on how workplaces can better embrace mission-driven, multifaceted  individuals like me—those who bring both technical expertise and a heart for transformation. \r\n",
    "• To Employers: What would it look like to view passion as a multiplier for professional  success? \r\n",
    "• To Leaders: How can you foster a culture where employees’ diverse skills and interests  are seen as assets, not distractions? \r\n",
    "I’m deeply grateful for the managers and colleagues who’ve encouraged me to bring my whole self to  work. Together, we can build workplaces that celebrate the whole person.\r\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "fc05b9d9",
   "metadata": {
    "papermill": {
     "duration": 0.002154,
     "end_time": "2024-11-29T04:05:03.487368",
     "exception": false,
     "start_time": "2024-11-29T04:05:03.485214",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## Moving Forward with Gratitude and Purpose\n",
    "To my fellow data-driven, wellness-focused professionals: Your ability to merge technical excellence  with human-centered care is your superpower. Be proud of the balance you create and the impact you  make. \r\n",
    "To employers and leaders: Recognize the value in multifaceted individuals. People who balance  analytics, transformation, and wellness don’t just bring diverse skills—they bring new ways of thinking  and leading. \r\n",
    "This season, I’m grateful for my journey, my passions, and the people who’ve supported me along the  way. Here’s to a future where we all bring our whole selves to the table—and thrive because of it.\r\n"
   ]
  }
 ],
 "metadata": {
  "kaggle": {
   "accelerator": "none",
   "dataSources": [
    {
     "datasetId": 6188747,
     "sourceId": 10045613,
     "sourceType": "datasetVersion"
    }
   ],
   "dockerImageVersionId": 30749,
   "isGpuEnabled": false,
   "isInternetEnabled": true,
   "language": "r",
   "sourceType": "notebook"
  },
  "kernelspec": {
   "display_name": "R",
   "language": "R",
   "name": "ir"
  },
  "language_info": {
   "codemirror_mode": "r",
   "file_extension": ".r",
   "mimetype": "text/x-r-source",
   "name": "R",
   "pygments_lexer": "r",
   "version": "4.4.0"
  },
  "papermill": {
   "default_parameters": {},
   "duration": 4.842955,
   "end_time": "2024-11-29T04:05:03.611254",
   "environment_variables": {},
   "exception": null,
   "input_path": "__notebook__.ipynb",
   "output_path": "__notebook__.ipynb",
   "parameters": {},
   "start_time": "2024-11-29T04:04:58.768299",
   "version": "2.6.0"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
