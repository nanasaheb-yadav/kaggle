{
 "cells": [
  {
   "cell_type": "markdown",
   "id": "df733d1f",
   "metadata": {
    "papermill": {
     "duration": 0.006667,
     "end_time": "2022-07-17T12:13:07.765071",
     "exception": false,
     "start_time": "2022-07-17T12:13:07.758404",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## mtcars (Motor Trend Car Road Tests) Dataset Exploration using R Language.\n",
    "*************************************************************************************************************************\n",
    "#### data():\n",
    "     Loads specified data sets, or list the available data sets."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 1,
   "id": "e69036f6",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-07-17T12:13:07.784523Z",
     "iopub.status.busy": "2022-07-17T12:13:07.781546Z",
     "iopub.status.idle": "2022-07-17T12:13:07.933754Z",
     "shell.execute_reply": "2022-07-17T12:13:07.930600Z"
    },
    "papermill": {
     "duration": 0.165457,
     "end_time": "2022-07-17T12:13:07.938319",
     "exception": false,
     "start_time": "2022-07-17T12:13:07.772862",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "[1] \"Loaded dataset successfully\"\n"
     ]
    }
   ],
   "source": [
    "# ?data() - help for data() function, it returns all details of data function.\n",
    "# Loading mtcars dataset using data function.\n",
    "\n",
    "data(mtcars)\n",
    "print(\"Loaded dataset successfully\")"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 2,
   "id": "4db9534a",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-07-17T12:13:07.992120Z",
     "iopub.status.busy": "2022-07-17T12:13:07.951891Z",
     "iopub.status.idle": "2022-07-17T12:13:08.085993Z",
     "shell.execute_reply": "2022-07-17T12:13:08.083813Z"
    },
    "papermill": {
     "duration": 0.144244,
     "end_time": "2022-07-17T12:13:08.088558",
     "exception": false,
     "start_time": "2022-07-17T12:13:07.944314",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'mpg'</li><li>'cyl'</li><li>'disp'</li><li>'hp'</li><li>'drat'</li><li>'wt'</li><li>'qsec'</li><li>'vs'</li><li>'am'</li><li>'gear'</li><li>'carb'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'mpg'\n",
       "\\item 'cyl'\n",
       "\\item 'disp'\n",
       "\\item 'hp'\n",
       "\\item 'drat'\n",
       "\\item 'wt'\n",
       "\\item 'qsec'\n",
       "\\item 'vs'\n",
       "\\item 'am'\n",
       "\\item 'gear'\n",
       "\\item 'carb'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'mpg'\n",
       "2. 'cyl'\n",
       "3. 'disp'\n",
       "4. 'hp'\n",
       "5. 'drat'\n",
       "6. 'wt'\n",
       "7. 'qsec'\n",
       "8. 'vs'\n",
       "9. 'am'\n",
       "10. 'gear'\n",
       "11. 'carb'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       " [1] \"mpg\"  \"cyl\"  \"disp\" \"hp\"   \"drat\" \"wt\"   \"qsec\" \"vs\"   \"am\"   \"gear\"\n",
       "[11] \"carb\""
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 1 × 11</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>mpg</th><th scope=col>cyl</th><th scope=col>disp</th><th scope=col>hp</th><th scope=col>drat</th><th scope=col>wt</th><th scope=col>qsec</th><th scope=col>vs</th><th scope=col>am</th><th scope=col>gear</th><th scope=col>carb</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>Mazda RX4</th><td>21</td><td>6</td><td>160</td><td>110</td><td>3.9</td><td>2.62</td><td>16.46</td><td>0</td><td>1</td><td>4</td><td>4</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 1 × 11\n",
       "\\begin{tabular}{r|lllllllllll}\n",
       "  & mpg & cyl & disp & hp & drat & wt & qsec & vs & am & gear & carb\\\\\n",
       "  & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl>\\\\\n",
       "\\hline\n",
       "\tMazda RX4 & 21 & 6 & 160 & 110 & 3.9 & 2.62 & 16.46 & 0 & 1 & 4 & 4\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 1 × 11\n",
       "\n",
       "| <!--/--> | mpg &lt;dbl&gt; | cyl &lt;dbl&gt; | disp &lt;dbl&gt; | hp &lt;dbl&gt; | drat &lt;dbl&gt; | wt &lt;dbl&gt; | qsec &lt;dbl&gt; | vs &lt;dbl&gt; | am &lt;dbl&gt; | gear &lt;dbl&gt; | carb &lt;dbl&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|---|---|---|\n",
       "| Mazda RX4 | 21 | 6 | 160 | 110 | 3.9 | 2.62 | 16.46 | 0 | 1 | 4 | 4 |\n",
       "\n"
      ],
      "text/plain": [
       "          mpg cyl disp hp  drat wt   qsec  vs am gear carb\n",
       "Mazda RX4 21  6   160  110 3.9  2.62 16.46 0  1  4    4   "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 2 × 11</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>mpg</th><th scope=col>cyl</th><th scope=col>disp</th><th scope=col>hp</th><th scope=col>drat</th><th scope=col>wt</th><th scope=col>qsec</th><th scope=col>vs</th><th scope=col>am</th><th scope=col>gear</th><th scope=col>carb</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>Mazda RX4</th><td>21</td><td>6</td><td>160</td><td>110</td><td>3.9</td><td>2.620</td><td>16.46</td><td>0</td><td>1</td><td>4</td><td>4</td></tr>\n",
       "\t<tr><th scope=row>Mazda RX4 Wag</th><td>21</td><td>6</td><td>160</td><td>110</td><td>3.9</td><td>2.875</td><td>17.02</td><td>0</td><td>1</td><td>4</td><td>4</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 2 × 11\n",
       "\\begin{tabular}{r|lllllllllll}\n",
       "  & mpg & cyl & disp & hp & drat & wt & qsec & vs & am & gear & carb\\\\\n",
       "  & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl>\\\\\n",
       "\\hline\n",
       "\tMazda RX4 & 21 & 6 & 160 & 110 & 3.9 & 2.620 & 16.46 & 0 & 1 & 4 & 4\\\\\n",
       "\tMazda RX4 Wag & 21 & 6 & 160 & 110 & 3.9 & 2.875 & 17.02 & 0 & 1 & 4 & 4\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 2 × 11\n",
       "\n",
       "| <!--/--> | mpg &lt;dbl&gt; | cyl &lt;dbl&gt; | disp &lt;dbl&gt; | hp &lt;dbl&gt; | drat &lt;dbl&gt; | wt &lt;dbl&gt; | qsec &lt;dbl&gt; | vs &lt;dbl&gt; | am &lt;dbl&gt; | gear &lt;dbl&gt; | carb &lt;dbl&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|---|---|---|\n",
       "| Mazda RX4 | 21 | 6 | 160 | 110 | 3.9 | 2.620 | 16.46 | 0 | 1 | 4 | 4 |\n",
       "| Mazda RX4 Wag | 21 | 6 | 160 | 110 | 3.9 | 2.875 | 17.02 | 0 | 1 | 4 | 4 |\n",
       "\n"
      ],
      "text/plain": [
       "              mpg cyl disp hp  drat wt    qsec  vs am gear carb\n",
       "Mazda RX4     21  6   160  110 3.9  2.620 16.46 0  1  4    4   \n",
       "Mazda RX4 Wag 21  6   160  110 3.9  2.875 17.02 0  1  4    4   "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 1 × 11</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>mpg</th><th scope=col>cyl</th><th scope=col>disp</th><th scope=col>hp</th><th scope=col>drat</th><th scope=col>wt</th><th scope=col>qsec</th><th scope=col>vs</th><th scope=col>am</th><th scope=col>gear</th><th scope=col>carb</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>Volvo 142E</th><td>21.4</td><td>4</td><td>121</td><td>109</td><td>4.11</td><td>2.78</td><td>18.6</td><td>1</td><td>1</td><td>4</td><td>2</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 1 × 11\n",
       "\\begin{tabular}{r|lllllllllll}\n",
       "  & mpg & cyl & disp & hp & drat & wt & qsec & vs & am & gear & carb\\\\\n",
       "  & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl>\\\\\n",
       "\\hline\n",
       "\tVolvo 142E & 21.4 & 4 & 121 & 109 & 4.11 & 2.78 & 18.6 & 1 & 1 & 4 & 2\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 1 × 11\n",
       "\n",
       "| <!--/--> | mpg &lt;dbl&gt; | cyl &lt;dbl&gt; | disp &lt;dbl&gt; | hp &lt;dbl&gt; | drat &lt;dbl&gt; | wt &lt;dbl&gt; | qsec &lt;dbl&gt; | vs &lt;dbl&gt; | am &lt;dbl&gt; | gear &lt;dbl&gt; | carb &lt;dbl&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|---|---|---|\n",
       "| Volvo 142E | 21.4 | 4 | 121 | 109 | 4.11 | 2.78 | 18.6 | 1 | 1 | 4 | 2 |\n",
       "\n"
      ],
      "text/plain": [
       "           mpg  cyl disp hp  drat wt   qsec vs am gear carb\n",
       "Volvo 142E 21.4 4   121  109 4.11 2.78 18.6 1  1  4    2   "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 2 × 11</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>mpg</th><th scope=col>cyl</th><th scope=col>disp</th><th scope=col>hp</th><th scope=col>drat</th><th scope=col>wt</th><th scope=col>qsec</th><th scope=col>vs</th><th scope=col>am</th><th scope=col>gear</th><th scope=col>carb</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>Maserati Bora</th><td>15.0</td><td>8</td><td>301</td><td>335</td><td>3.54</td><td>3.57</td><td>14.6</td><td>0</td><td>1</td><td>5</td><td>8</td></tr>\n",
       "\t<tr><th scope=row>Volvo 142E</th><td>21.4</td><td>4</td><td>121</td><td>109</td><td>4.11</td><td>2.78</td><td>18.6</td><td>1</td><td>1</td><td>4</td><td>2</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 2 × 11\n",
       "\\begin{tabular}{r|lllllllllll}\n",
       "  & mpg & cyl & disp & hp & drat & wt & qsec & vs & am & gear & carb\\\\\n",
       "  & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl>\\\\\n",
       "\\hline\n",
       "\tMaserati Bora & 15.0 & 8 & 301 & 335 & 3.54 & 3.57 & 14.6 & 0 & 1 & 5 & 8\\\\\n",
       "\tVolvo 142E & 21.4 & 4 & 121 & 109 & 4.11 & 2.78 & 18.6 & 1 & 1 & 4 & 2\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 2 × 11\n",
       "\n",
       "| <!--/--> | mpg &lt;dbl&gt; | cyl &lt;dbl&gt; | disp &lt;dbl&gt; | hp &lt;dbl&gt; | drat &lt;dbl&gt; | wt &lt;dbl&gt; | qsec &lt;dbl&gt; | vs &lt;dbl&gt; | am &lt;dbl&gt; | gear &lt;dbl&gt; | carb &lt;dbl&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|---|---|---|\n",
       "| Maserati Bora | 15.0 | 8 | 301 | 335 | 3.54 | 3.57 | 14.6 | 0 | 1 | 5 | 8 |\n",
       "| Volvo 142E | 21.4 | 4 | 121 | 109 | 4.11 | 2.78 | 18.6 | 1 | 1 | 4 | 2 |\n",
       "\n"
      ],
      "text/plain": [
       "              mpg  cyl disp hp  drat wt   qsec vs am gear carb\n",
       "Maserati Bora 15.0 8   301  335 3.54 3.57 14.6 0  1  5    8   \n",
       "Volvo 142E    21.4 4   121  109 4.11 2.78 18.6 1  1  4    2   "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# VIEW DATA OF THE DATASET mtcars\n",
    "## mtcars # it prints all dataset details upto some rows (32) and columns allowed in editor.\n",
    "\n",
    "names(mtcars) # returns names of columns of dataframe or dataset\n",
    "\n",
    "# default rows returned by head() and tail() are 6 \n",
    "\n",
    "# head(input, no of rows) : returns 6 top rows of dataframe/dataset/vector, second parameter is no of rows you want to see.\n",
    "head(mtcars,1)\n",
    "head(mtcars,2)\n",
    "\n",
    "tail(mtcars,1) # returns 1 rows from bottom of dataset/ dataframe, to get more rows change value.. \n",
    "tail(mtcars,2) # returns 2 rows from bottom of dataset. "
   ]
  },
  {
   "cell_type": "markdown",
   "id": "c19348e6",
   "metadata": {
    "papermill": {
     "duration": 0.006478,
     "end_time": "2022-07-17T12:13:08.101468",
     "exception": false,
     "start_time": "2022-07-17T12:13:08.094990",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**********************************************************************************************************************\n",
    "#### mean():\n",
    "        Used to calculate the arithmetic mean of the elements of the numeric vector passed to it as argument.\n",
    "        \n",
    "        "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 3,
   "id": "f4711f17",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-07-17T12:13:08.118912Z",
     "iopub.status.busy": "2022-07-17T12:13:08.117034Z",
     "iopub.status.idle": "2022-07-17T12:13:08.138261Z",
     "shell.execute_reply": "2022-07-17T12:13:08.136247Z"
    },
    "papermill": {
     "duration": 0.032375,
     "end_time": "2022-07-17T12:13:08.140691",
     "exception": false,
     "start_time": "2022-07-17T12:13:08.108316",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "20.090625"
      ],
      "text/latex": [
       "20.090625"
      ],
      "text/markdown": [
       "20.090625"
      ],
      "text/plain": [
       "[1] 20.09062"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# ?mean() - returns details of min() function with its syntax and usage. \n",
    "mean(mtcars$mpg)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "7adbcdbd",
   "metadata": {
    "papermill": {
     "duration": 0.007024,
     "end_time": "2022-07-17T12:13:08.154123",
     "exception": false,
     "start_time": "2022-07-17T12:13:08.147099",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "*************************************************************************************************************************\n",
    "#### median():\n",
    "        The median is the value at the middle when the data is sorted in ascending order.\n",
    "        \n",
    "        Usage:\n",
    "            median(x, na.rm = FALSE, ...)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 4,
   "id": "f94a0fdd",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-07-17T12:13:08.170906Z",
     "iopub.status.busy": "2022-07-17T12:13:08.169071Z",
     "iopub.status.idle": "2022-07-17T12:13:08.195839Z",
     "shell.execute_reply": "2022-07-17T12:13:08.193847Z"
    },
    "papermill": {
     "duration": 0.03796,
     "end_time": "2022-07-17T12:13:08.198383",
     "exception": false,
     "start_time": "2022-07-17T12:13:08.160423",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "19.2"
      ],
      "text/latex": [
       "19.2"
      ],
      "text/markdown": [
       "19.2"
      ],
      "text/plain": [
       "[1] 19.2"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "median(mtcars$mpg)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "fc96f31e",
   "metadata": {
    "papermill": {
     "duration": 0.006666,
     "end_time": "2022-07-17T12:13:08.211937",
     "exception": false,
     "start_time": "2022-07-17T12:13:08.205271",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "*************************************************************************************************************************\n",
    "#### min() & max():\n",
    "            Returns the (regular or parallel) maxima and minima of the input values."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 5,
   "id": "2ae777f6",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-07-17T12:13:08.229102Z",
     "iopub.status.busy": "2022-07-17T12:13:08.227252Z",
     "iopub.status.idle": "2022-07-17T12:13:08.253245Z",
     "shell.execute_reply": "2022-07-17T12:13:08.251246Z"
    },
    "papermill": {
     "duration": 0.037398,
     "end_time": "2022-07-17T12:13:08.255747",
     "exception": false,
     "start_time": "2022-07-17T12:13:08.218349",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "10.4"
      ],
      "text/latex": [
       "10.4"
      ],
      "text/markdown": [
       "10.4"
      ],
      "text/plain": [
       "[1] 10.4"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "33.9"
      ],
      "text/latex": [
       "33.9"
      ],
      "text/markdown": [
       "33.9"
      ],
      "text/plain": [
       "[1] 33.9"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "min(mtcars$mpg)\n",
    "max(mtcars$mpg)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "9623f950",
   "metadata": {
    "papermill": {
     "duration": 0.007069,
     "end_time": "2022-07-17T12:13:08.269746",
     "exception": false,
     "start_time": "2022-07-17T12:13:08.262677",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "*************************************************************************************************************************\n",
    "#### var():\n",
    "#### sd():\n",
    "#### quantile():\n",
    "#### IQR():\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 6,
   "id": "33fa314f",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-07-17T12:13:08.293420Z",
     "iopub.status.busy": "2022-07-17T12:13:08.291502Z",
     "iopub.status.idle": "2022-07-17T12:13:08.372459Z",
     "shell.execute_reply": "2022-07-17T12:13:08.370486Z"
    },
    "papermill": {
     "duration": 0.09819,
     "end_time": "2022-07-17T12:13:08.374874",
     "exception": false,
     "start_time": "2022-07-17T12:13:08.276684",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "[1] \"Variance:\"\n"
     ]
    },
    {
     "data": {
      "text/html": [
       "36.3241028225806"
      ],
      "text/latex": [
       "36.3241028225806"
      ],
      "text/markdown": [
       "36.3241028225806"
      ],
      "text/plain": [
       "[1] 36.3241"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "[1] \"-----------------------------------\"\n",
      "[1] \"Standard Deviation:\"\n"
     ]
    },
    {
     "data": {
      "text/html": [
       "6.0269480520891"
      ],
      "text/latex": [
       "6.0269480520891"
      ],
      "text/markdown": [
       "6.0269480520891"
      ],
      "text/plain": [
       "[1] 6.026948"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "[1] \"-----------------------------------\"\n",
      "[1] \"Quantile:\"\n"
     ]
    },
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".dl-inline {width: auto; margin:0; padding: 0}\n",
       ".dl-inline>dt, .dl-inline>dd {float: none; width: auto; display: inline-block}\n",
       ".dl-inline>dt::after {content: \":\\0020\"; padding-right: .5ex}\n",
       ".dl-inline>dt:not(:first-of-type) {padding-left: .5ex}\n",
       "</style><dl class=dl-inline><dt>0%</dt><dd>1</dd><dt>25%</dt><dd>2</dd><dt>50%</dt><dd>3</dd><dt>75%</dt><dd>4</dd><dt>100%</dt><dd>5</dd></dl>\n"
      ],
      "text/latex": [
       "\\begin{description*}\n",
       "\\item[0\\textbackslash{}\\%] 1\n",
       "\\item[25\\textbackslash{}\\%] 2\n",
       "\\item[50\\textbackslash{}\\%] 3\n",
       "\\item[75\\textbackslash{}\\%] 4\n",
       "\\item[100\\textbackslash{}\\%] 5\n",
       "\\end{description*}\n"
      ],
      "text/markdown": [
       "0%\n",
       ":   125%\n",
       ":   250%\n",
       ":   375%\n",
       ":   4100%\n",
       ":   5\n",
       "\n"
      ],
      "text/plain": [
       "  0%  25%  50%  75% 100% \n",
       "   1    2    3    4    5 "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".dl-inline {width: auto; margin:0; padding: 0}\n",
       ".dl-inline>dt, .dl-inline>dd {float: none; width: auto; display: inline-block}\n",
       ".dl-inline>dt::after {content: \":\\0020\"; padding-right: .5ex}\n",
       ".dl-inline>dt:not(:first-of-type) {padding-left: .5ex}\n",
       "</style><dl class=dl-inline><dt>0%</dt><dd>10.4</dd><dt>25%</dt><dd>15.425</dd><dt>50%</dt><dd>19.2</dd><dt>75%</dt><dd>22.8</dd><dt>100%</dt><dd>33.9</dd></dl>\n"
      ],
      "text/latex": [
       "\\begin{description*}\n",
       "\\item[0\\textbackslash{}\\%] 10.4\n",
       "\\item[25\\textbackslash{}\\%] 15.425\n",
       "\\item[50\\textbackslash{}\\%] 19.2\n",
       "\\item[75\\textbackslash{}\\%] 22.8\n",
       "\\item[100\\textbackslash{}\\%] 33.9\n",
       "\\end{description*}\n"
      ],
      "text/markdown": [
       "0%\n",
       ":   10.425%\n",
       ":   15.42550%\n",
       ":   19.275%\n",
       ":   22.8100%\n",
       ":   33.9\n",
       "\n"
      ],
      "text/plain": [
       "    0%    25%    50%    75%   100% \n",
       "10.400 15.425 19.200 22.800 33.900 "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "[1] \"-----------------------------------\"\n",
      "[1] \"Interquartile Range:\"\n"
     ]
    },
    {
     "data": {
      "text/html": [
       "7.375"
      ],
      "text/latex": [
       "7.375"
      ],
      "text/markdown": [
       "7.375"
      ],
      "text/plain": [
       "[1] 7.375"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "print(\"Variance:\")\n",
    "var(mtcars$mpg)\n",
    "print(\"-----------------------------------\")\n",
    "print(\"Standard Deviation:\")\n",
    "sd(mtcars$mpg)\n",
    "print(\"-----------------------------------\")\n",
    "print(\"Quantile:\")\n",
    "quantile(1:5)\n",
    "quantile(mtcars$mpg)\n",
    "print(\"-----------------------------------\")\n",
    "print(\"Interquartile Range:\")\n",
    "IQR(mtcars$mpg)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "1a68450d",
   "metadata": {
    "papermill": {
     "duration": 0.008408,
     "end_time": "2022-07-17T12:13:08.391401",
     "exception": false,
     "start_time": "2022-07-17T12:13:08.382993",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "*************************************************************************************************************************\n",
    "#### summary(): \n",
    "            summary is a generic function used to produce result summaries of the results of various model fitting functions. The function invokes particular methods which depend on the class of the first argument"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 7,
   "id": "44fd081a",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-07-17T12:13:08.411934Z",
     "iopub.status.busy": "2022-07-17T12:13:08.410055Z",
     "iopub.status.idle": "2022-07-17T12:13:08.497047Z",
     "shell.execute_reply": "2022-07-17T12:13:08.495321Z"
    },
    "papermill": {
     "duration": 0.099789,
     "end_time": "2022-07-17T12:13:08.499324",
     "exception": false,
     "start_time": "2022-07-17T12:13:08.399535",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. \n",
       "  10.40   15.43   19.20   20.09   22.80   33.90 "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'summaryDefault'</li><li>'table'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'summaryDefault'\n",
       "\\item 'table'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'summaryDefault'\n",
       "2. 'table'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       "[1] \"summaryDefault\" \"table\"         "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'Min.'</li><li>'1st Qu.'</li><li>'Median'</li><li>'Mean'</li><li>'3rd Qu.'</li><li>'Max.'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'Min.'\n",
       "\\item '1st Qu.'\n",
       "\\item 'Median'\n",
       "\\item 'Mean'\n",
       "\\item '3rd Qu.'\n",
       "\\item 'Max.'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'Min.'\n",
       "2. '1st Qu.'\n",
       "3. 'Median'\n",
       "4. 'Mean'\n",
       "5. '3rd Qu.'\n",
       "6. 'Max.'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       "[1] \"Min.\"    \"1st Qu.\" \"Median\"  \"Mean\"    \"3rd Qu.\" \"Max.\"   "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/plain": [
       "1st Qu. \n",
       " 15.425 "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/plain": [
       "Min. \n",
       "10.4 "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "summary(mtcars$mpg) # returns  'Min.''1st Qu.''Median''Mean''3rd Qu.''Max.' for the column mpg of mtcars dataset\n",
    "\n",
    "#summary(mtcars)  \n",
    "\n",
    "## ------------------------------------------------------------------------\n",
    "s=summary(mtcars$mpg)\n",
    "\n",
    "class(s) # returns type of output of summary for column \"mpg\" in dataset\n",
    "\n",
    "names(s) # returns column names of table (of 'Min.''1st Qu.''Median''Mean''3rd Qu.''Max.') created by summary() function\n",
    "\n",
    "s[\"1st Qu.\"]  # returns 1st Qu of column mpg from mtcars\n",
    "s[\"Min.\"]  # returns min value of mpg column from mtcars dataset"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 8,
   "id": "4799dc5c",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-07-17T12:13:08.521198Z",
     "iopub.status.busy": "2022-07-17T12:13:08.519626Z",
     "iopub.status.idle": "2022-07-17T12:13:08.567138Z",
     "shell.execute_reply": "2022-07-17T12:13:08.565337Z"
    },
    "papermill": {
     "duration": 0.060914,
     "end_time": "2022-07-17T12:13:08.569562",
     "exception": false,
     "start_time": "2022-07-17T12:13:08.508648",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "      mpg             cyl             disp             hp       \n",
       " Min.   :10.40   Min.   :4.000   Min.   : 71.1   Min.   : 52.0  \n",
       " 1st Qu.:15.43   1st Qu.:4.000   1st Qu.:120.8   1st Qu.: 96.5  \n",
       " Median :19.20   Median :6.000   Median :196.3   Median :123.0  \n",
       " Mean   :20.09   Mean   :6.188   Mean   :230.7   Mean   :146.7  \n",
       " 3rd Qu.:22.80   3rd Qu.:8.000   3rd Qu.:326.0   3rd Qu.:180.0  \n",
       " Max.   :33.90   Max.   :8.000   Max.   :472.0   Max.   :335.0  \n",
       "      drat             wt             qsec             vs        \n",
       " Min.   :2.760   Min.   :1.513   Min.   :14.50   Min.   :0.0000  \n",
       " 1st Qu.:3.080   1st Qu.:2.581   1st Qu.:16.89   1st Qu.:0.0000  \n",
       " Median :3.695   Median :3.325   Median :17.71   Median :0.0000  \n",
       " Mean   :3.597   Mean   :3.217   Mean   :17.85   Mean   :0.4375  \n",
       " 3rd Qu.:3.920   3rd Qu.:3.610   3rd Qu.:18.90   3rd Qu.:1.0000  \n",
       " Max.   :4.930   Max.   :5.424   Max.   :22.90   Max.   :1.0000  \n",
       "       am              gear            carb      \n",
       " Min.   :0.0000   Min.   :3.000   Min.   :1.000  \n",
       " 1st Qu.:0.0000   1st Qu.:3.000   1st Qu.:2.000  \n",
       " Median :0.0000   Median :4.000   Median :2.000  \n",
       " Mean   :0.4062   Mean   :3.688   Mean   :2.812  \n",
       " 3rd Qu.:1.0000   3rd Qu.:4.000   3rd Qu.:4.000  \n",
       " Max.   :1.0000   Max.   :5.000   Max.   :8.000  "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "'table'"
      ],
      "text/latex": [
       "'table'"
      ],
      "text/markdown": [
       "'table'"
      ],
      "text/plain": [
       "[1] \"table\""
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/plain": [
       "NULL"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li><span style=white-space:pre-wrap>'Min.   :10.40  '</span></li><li><span style=white-space:pre-wrap>'1st Qu.:15.43  '</span></li><li><span style=white-space:pre-wrap>'Median :19.20  '</span></li><li><span style=white-space:pre-wrap>'Mean   :20.09  '</span></li><li><span style=white-space:pre-wrap>'3rd Qu.:22.80  '</span></li><li><span style=white-space:pre-wrap>'Max.   :33.90  '</span></li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'Min.   :10.40  '\n",
       "\\item '1st Qu.:15.43  '\n",
       "\\item 'Median :19.20  '\n",
       "\\item 'Mean   :20.09  '\n",
       "\\item '3rd Qu.:22.80  '\n",
       "\\item 'Max.   :33.90  '\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. <span style=white-space:pre-wrap>'Min.   :10.40  '</span>\n",
       "2. <span style=white-space:pre-wrap>'1st Qu.:15.43  '</span>\n",
       "3. <span style=white-space:pre-wrap>'Median :19.20  '</span>\n",
       "4. <span style=white-space:pre-wrap>'Mean   :20.09  '</span>\n",
       "5. <span style=white-space:pre-wrap>'3rd Qu.:22.80  '</span>\n",
       "6. <span style=white-space:pre-wrap>'Max.   :33.90  '</span>\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       "[1] \"Min.   :10.40  \" \"1st Qu.:15.43  \" \"Median :19.20  \" \"Mean   :20.09  \"\n",
       "[5] \"3rd Qu.:22.80  \" \"Max.   :33.90  \""
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "## ------------------------------------------------------------------------\n",
    "summary(mtcars)  # use this to print table for all columns in dataset\n",
    "\n",
    "s=summary(mtcars) # returns 'Min.''1st Qu.''Median''Mean''3rd Qu.''Max.' for each column in mtcars dataset\n",
    "\n",
    "class(s)  \n",
    "names(s)  # returns null as summary returns table with row as min median max and col with its values for each column\n",
    "\n",
    "# to print mean mediam min max etc values of each column you can use it using slicing\n",
    "s[1:6]"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 9,
   "id": "2f9f1460",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-07-17T12:13:08.592567Z",
     "iopub.status.busy": "2022-07-17T12:13:08.590978Z",
     "iopub.status.idle": "2022-07-17T12:13:08.657042Z",
     "shell.execute_reply": "2022-07-17T12:13:08.655231Z"
    },
    "papermill": {
     "duration": 0.080103,
     "end_time": "2022-07-17T12:13:08.659432",
     "exception": false,
     "start_time": "2022-07-17T12:13:08.579329",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<span style=white-space:pre-wrap>'Min.   :10.40  '</span>"
      ],
      "text/latex": [
       "'Min.   :10.40  '"
      ],
      "text/markdown": [
       "<span style=white-space:pre-wrap>'Min.   :10.40  '</span>"
      ],
      "text/plain": [
       "[1] \"Min.   :10.40  \""
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "[1] \"----------------------------------------------------------------------\"\n",
      "[1] \"mean value of wt (6) column is: \"\n"
     ]
    },
    {
     "data": {
      "text/html": [
       "<span style=white-space:pre-wrap>'Mean   :3.217  '</span>"
      ],
      "text/latex": [
       "'Mean   :3.217  '"
      ],
      "text/markdown": [
       "<span style=white-space:pre-wrap>'Mean   :3.217  '</span>"
      ],
      "text/plain": [
       "[1] \"Mean   :3.217  \""
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "[1] \"----------------------------------------------------------------------\"\n",
      "[1] \"MIN of all columns: \"\n"
     ]
    },
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".dl-inline {width: auto; margin:0; padding: 0}\n",
       ".dl-inline>dt, .dl-inline>dd {float: none; width: auto; display: inline-block}\n",
       ".dl-inline>dt::after {content: \":\\0020\"; padding-right: .5ex}\n",
       ".dl-inline>dt:not(:first-of-type) {padding-left: .5ex}\n",
       "</style><dl class=dl-inline><dt><span style=white-space:pre-wrap>     mpg</span></dt><dd><span style=white-space:pre-wrap>'Min.   :10.40  '</span></dd><dt><span style=white-space:pre-wrap>     cyl</span></dt><dd><span style=white-space:pre-wrap>'Min.   :4.000  '</span></dd><dt><span style=white-space:pre-wrap>     disp</span></dt><dd><span style=white-space:pre-wrap>'Min.   : 71.1  '</span></dd><dt><span style=white-space:pre-wrap>      hp</span></dt><dd><span style=white-space:pre-wrap>'Min.   : 52.0  '</span></dd><dt><span style=white-space:pre-wrap>     drat</span></dt><dd><span style=white-space:pre-wrap>'Min.   :2.760  '</span></dd><dt><span style=white-space:pre-wrap>      wt</span></dt><dd><span style=white-space:pre-wrap>'Min.   :1.513  '</span></dd><dt><span style=white-space:pre-wrap>     qsec</span></dt><dd><span style=white-space:pre-wrap>'Min.   :14.50  '</span></dd><dt><span style=white-space:pre-wrap>      vs</span></dt><dd><span style=white-space:pre-wrap>'Min.   :0.0000  '</span></dd><dt><span style=white-space:pre-wrap>      am</span></dt><dd><span style=white-space:pre-wrap>'Min.   :0.0000  '</span></dd><dt><span style=white-space:pre-wrap>     gear</span></dt><dd><span style=white-space:pre-wrap>'Min.   :3.000  '</span></dd><dt><span style=white-space:pre-wrap>     carb</span></dt><dd><span style=white-space:pre-wrap>'Min.   :1.000  '</span></dd></dl>\n"
      ],
      "text/latex": [
       "\\begin{description*}\n",
       "\\item[     mpg] 'Min.   :10.40  '\n",
       "\\item[     cyl] 'Min.   :4.000  '\n",
       "\\item[     disp] 'Min.   : 71.1  '\n",
       "\\item[      hp] 'Min.   : 52.0  '\n",
       "\\item[     drat] 'Min.   :2.760  '\n",
       "\\item[      wt] 'Min.   :1.513  '\n",
       "\\item[     qsec] 'Min.   :14.50  '\n",
       "\\item[      vs] 'Min.   :0.0000  '\n",
       "\\item[      am] 'Min.   :0.0000  '\n",
       "\\item[     gear] 'Min.   :3.000  '\n",
       "\\item[     carb] 'Min.   :1.000  '\n",
       "\\end{description*}\n"
      ],
      "text/markdown": [
       "<span style=white-space:pre-wrap>     mpg</span>\n",
       ":   <span style=white-space:pre-wrap>'Min.   :10.40  '</span><span style=white-space:pre-wrap>     cyl</span>\n",
       ":   <span style=white-space:pre-wrap>'Min.   :4.000  '</span><span style=white-space:pre-wrap>     disp</span>\n",
       ":   <span style=white-space:pre-wrap>'Min.   : 71.1  '</span><span style=white-space:pre-wrap>      hp</span>\n",
       ":   <span style=white-space:pre-wrap>'Min.   : 52.0  '</span><span style=white-space:pre-wrap>     drat</span>\n",
       ":   <span style=white-space:pre-wrap>'Min.   :2.760  '</span><span style=white-space:pre-wrap>      wt</span>\n",
       ":   <span style=white-space:pre-wrap>'Min.   :1.513  '</span><span style=white-space:pre-wrap>     qsec</span>\n",
       ":   <span style=white-space:pre-wrap>'Min.   :14.50  '</span><span style=white-space:pre-wrap>      vs</span>\n",
       ":   <span style=white-space:pre-wrap>'Min.   :0.0000  '</span><span style=white-space:pre-wrap>      am</span>\n",
       ":   <span style=white-space:pre-wrap>'Min.   :0.0000  '</span><span style=white-space:pre-wrap>     gear</span>\n",
       ":   <span style=white-space:pre-wrap>'Min.   :3.000  '</span><span style=white-space:pre-wrap>     carb</span>\n",
       ":   <span style=white-space:pre-wrap>'Min.   :1.000  '</span>\n",
       "\n"
      ],
      "text/plain": [
       "               mpg                cyl               disp                 hp \n",
       " \"Min.   :10.40  \"  \"Min.   :4.000  \"  \"Min.   : 71.1  \"  \"Min.   : 52.0  \" \n",
       "              drat                 wt               qsec                 vs \n",
       " \"Min.   :2.760  \"  \"Min.   :1.513  \"  \"Min.   :14.50  \" \"Min.   :0.0000  \" \n",
       "                am               gear               carb \n",
       "\"Min.   :0.0000  \"  \"Min.   :3.000  \"  \"Min.   :1.000  \" "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "[1] \"----------------------------------------------------------------------\"\n",
      "[1] \"All Function values of 'disp' column: \"\n"
     ]
    },
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".dl-inline {width: auto; margin:0; padding: 0}\n",
       ".dl-inline>dt, .dl-inline>dd {float: none; width: auto; display: inline-block}\n",
       ".dl-inline>dt::after {content: \":\\0020\"; padding-right: .5ex}\n",
       ".dl-inline>dt:not(:first-of-type) {padding-left: .5ex}\n",
       "</style><dl class=dl-inline><dt>1</dt><dd><span style=white-space:pre-wrap>'Min.   : 71.1  '</span></dd><dt>2</dt><dd><span style=white-space:pre-wrap>'1st Qu.:120.8  '</span></dd><dt>3</dt><dd><span style=white-space:pre-wrap>'Median :196.3  '</span></dd><dt>4</dt><dd><span style=white-space:pre-wrap>'Mean   :230.7  '</span></dd><dt>5</dt><dd><span style=white-space:pre-wrap>'3rd Qu.:326.0  '</span></dd><dt>6</dt><dd><span style=white-space:pre-wrap>'Max.   :472.0  '</span></dd></dl>\n"
      ],
      "text/latex": [
       "\\begin{description*}\n",
       "\\item[1] 'Min.   : 71.1  '\n",
       "\\item[2] '1st Qu.:120.8  '\n",
       "\\item[3] 'Median :196.3  '\n",
       "\\item[4] 'Mean   :230.7  '\n",
       "\\item[5] '3rd Qu.:326.0  '\n",
       "\\item[6] 'Max.   :472.0  '\n",
       "\\end{description*}\n"
      ],
      "text/markdown": [
       "1\n",
       ":   <span style=white-space:pre-wrap>'Min.   : 71.1  '</span>2\n",
       ":   <span style=white-space:pre-wrap>'1st Qu.:120.8  '</span>3\n",
       ":   <span style=white-space:pre-wrap>'Median :196.3  '</span>4\n",
       ":   <span style=white-space:pre-wrap>'Mean   :230.7  '</span>5\n",
       ":   <span style=white-space:pre-wrap>'3rd Qu.:326.0  '</span>6\n",
       ":   <span style=white-space:pre-wrap>'Max.   :472.0  '</span>\n",
       "\n"
      ],
      "text/plain": [
       "                                                                        \n",
       "\"Min.   : 71.1  \" \"1st Qu.:120.8  \" \"Median :196.3  \" \"Mean   :230.7  \" \n",
       "                                    \n",
       "\"3rd Qu.:326.0  \" \"Max.   :472.0  \" "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# syntax: \n",
    "# s[rows numbers, column numbers i.e. name of columns]\n",
    "s[1,1]  # returns first row (Min) of first colunmn (mpg) \n",
    "\n",
    "#QUE. get mean value of wt (6) column\n",
    "#ANS: index(row) of means is 4 and index of col wt is 6 so passing 4,6 to get its mean\n",
    "print(\"----------------------------------------------------------------------\")\n",
    "print(\"mean value of wt (6) column is: \")\n",
    "s[4,6]\n",
    "print(\"----------------------------------------------------------------------\")\n",
    "#QUE:  get MIN of all columns\n",
    "#ANS: to get MIN of all columns in dataset need to pass index of min(1) and all index of columns(1 to 11)\n",
    "print(\"MIN of all columns: \")\n",
    "s[1,1:11]\n",
    "print(\"----------------------------------------------------------------------\")\n",
    "#QUE: get all function values for \"disp\" column \n",
    "#ANS: pass all indexs of rows (1:6) and index of disp column (3)\n",
    "print(\"All Function values of 'disp' column: \")\n",
    "s[1:6, 3]\n",
    "\n",
    "# like above you can perform different operations using slicing methods and data"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "85e06981",
   "metadata": {
    "papermill": {
     "duration": 0.010864,
     "end_time": "2022-07-17T12:13:08.680933",
     "exception": false,
     "start_time": "2022-07-17T12:13:08.670069",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "*************************************************************************************************************************\n",
    "### psych(Basic descriptive statistics useful for psychometrics): package available in R\n",
    "\n",
    "               \n",
    "    "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 10,
   "id": "fd84c49a",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-07-17T12:13:08.706066Z",
     "iopub.status.busy": "2022-07-17T12:13:08.704062Z",
     "iopub.status.idle": "2022-07-17T12:13:08.927382Z",
     "shell.execute_reply": "2022-07-17T12:13:08.925552Z"
    },
    "papermill": {
     "duration": 0.238556,
     "end_time": "2022-07-17T12:13:08.929908",
     "exception": false,
     "start_time": "2022-07-17T12:13:08.691352",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A psych: 11 × 13</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>vars</th><th scope=col>n</th><th scope=col>mean</th><th scope=col>sd</th><th scope=col>median</th><th scope=col>trimmed</th><th scope=col>mad</th><th scope=col>min</th><th scope=col>max</th><th scope=col>range</th><th scope=col>skew</th><th scope=col>kurtosis</th><th scope=col>se</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>mpg</th><td> 1</td><td>32</td><td> 20.090625</td><td>  6.0269481</td><td> 19.200</td><td> 19.6961538</td><td>  5.4114900</td><td>10.400</td><td> 33.900</td><td> 23.500</td><td> 0.6106550</td><td>-0.37276603</td><td> 1.06542396</td></tr>\n",
       "\t<tr><th scope=row>cyl</th><td> 2</td><td>32</td><td>  6.187500</td><td>  1.7859216</td><td>  6.000</td><td>  6.2307692</td><td>  2.9652000</td><td> 4.000</td><td>  8.000</td><td>  4.000</td><td>-0.1746119</td><td>-1.76211977</td><td> 0.31570933</td></tr>\n",
       "\t<tr><th scope=row>disp</th><td> 3</td><td>32</td><td>230.721875</td><td>123.9386938</td><td>196.300</td><td>222.5230769</td><td>140.4763500</td><td>71.100</td><td>472.000</td><td>400.900</td><td> 0.3816570</td><td>-1.20721195</td><td>21.90947271</td></tr>\n",
       "\t<tr><th scope=row>hp</th><td> 4</td><td>32</td><td>146.687500</td><td> 68.5628685</td><td>123.000</td><td>141.1923077</td><td> 77.0952000</td><td>52.000</td><td>335.000</td><td>283.000</td><td> 0.7260237</td><td>-0.13555112</td><td>12.12031731</td></tr>\n",
       "\t<tr><th scope=row>drat</th><td> 5</td><td>32</td><td>  3.596563</td><td>  0.5346787</td><td>  3.695</td><td>  3.5792308</td><td>  0.7042350</td><td> 2.760</td><td>  4.930</td><td>  2.170</td><td> 0.2659039</td><td>-0.71470062</td><td> 0.09451874</td></tr>\n",
       "\t<tr><th scope=row>wt</th><td> 6</td><td>32</td><td>  3.217250</td><td>  0.9784574</td><td>  3.325</td><td>  3.1526923</td><td>  0.7672455</td><td> 1.513</td><td>  5.424</td><td>  3.911</td><td> 0.4231465</td><td>-0.02271075</td><td> 0.17296847</td></tr>\n",
       "\t<tr><th scope=row>qsec</th><td> 7</td><td>32</td><td> 17.848750</td><td>  1.7869432</td><td> 17.710</td><td> 17.8276923</td><td>  1.4158830</td><td>14.500</td><td> 22.900</td><td>  8.400</td><td> 0.3690453</td><td> 0.33511422</td><td> 0.31588992</td></tr>\n",
       "\t<tr><th scope=row>vs</th><td> 8</td><td>32</td><td>  0.437500</td><td>  0.5040161</td><td>  0.000</td><td>  0.4230769</td><td>  0.0000000</td><td> 0.000</td><td>  1.000</td><td>  1.000</td><td> 0.2402577</td><td>-2.00193762</td><td> 0.08909831</td></tr>\n",
       "\t<tr><th scope=row>am</th><td> 9</td><td>32</td><td>  0.406250</td><td>  0.4989909</td><td>  0.000</td><td>  0.3846154</td><td>  0.0000000</td><td> 0.000</td><td>  1.000</td><td>  1.000</td><td> 0.3640159</td><td>-1.92474143</td><td> 0.08820997</td></tr>\n",
       "\t<tr><th scope=row>gear</th><td>10</td><td>32</td><td>  3.687500</td><td>  0.7378041</td><td>  4.000</td><td>  3.6153846</td><td>  1.4826000</td><td> 3.000</td><td>  5.000</td><td>  2.000</td><td> 0.5288545</td><td>-1.06975068</td><td> 0.13042656</td></tr>\n",
       "\t<tr><th scope=row>carb</th><td>11</td><td>32</td><td>  2.812500</td><td>  1.6152000</td><td>  2.000</td><td>  2.6538462</td><td>  1.4826000</td><td> 1.000</td><td>  8.000</td><td>  7.000</td><td> 1.0508738</td><td> 1.25704307</td><td> 0.28552971</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A psych: 11 × 13\n",
       "\\begin{tabular}{r|lllllllllllll}\n",
       "  & vars & n & mean & sd & median & trimmed & mad & min & max & range & skew & kurtosis & se\\\\\n",
       "  & <int> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl>\\\\\n",
       "\\hline\n",
       "\tmpg &  1 & 32 &  20.090625 &   6.0269481 &  19.200 &  19.6961538 &   5.4114900 & 10.400 &  33.900 &  23.500 &  0.6106550 & -0.37276603 &  1.06542396\\\\\n",
       "\tcyl &  2 & 32 &   6.187500 &   1.7859216 &   6.000 &   6.2307692 &   2.9652000 &  4.000 &   8.000 &   4.000 & -0.1746119 & -1.76211977 &  0.31570933\\\\\n",
       "\tdisp &  3 & 32 & 230.721875 & 123.9386938 & 196.300 & 222.5230769 & 140.4763500 & 71.100 & 472.000 & 400.900 &  0.3816570 & -1.20721195 & 21.90947271\\\\\n",
       "\thp &  4 & 32 & 146.687500 &  68.5628685 & 123.000 & 141.1923077 &  77.0952000 & 52.000 & 335.000 & 283.000 &  0.7260237 & -0.13555112 & 12.12031731\\\\\n",
       "\tdrat &  5 & 32 &   3.596563 &   0.5346787 &   3.695 &   3.5792308 &   0.7042350 &  2.760 &   4.930 &   2.170 &  0.2659039 & -0.71470062 &  0.09451874\\\\\n",
       "\twt &  6 & 32 &   3.217250 &   0.9784574 &   3.325 &   3.1526923 &   0.7672455 &  1.513 &   5.424 &   3.911 &  0.4231465 & -0.02271075 &  0.17296847\\\\\n",
       "\tqsec &  7 & 32 &  17.848750 &   1.7869432 &  17.710 &  17.8276923 &   1.4158830 & 14.500 &  22.900 &   8.400 &  0.3690453 &  0.33511422 &  0.31588992\\\\\n",
       "\tvs &  8 & 32 &   0.437500 &   0.5040161 &   0.000 &   0.4230769 &   0.0000000 &  0.000 &   1.000 &   1.000 &  0.2402577 & -2.00193762 &  0.08909831\\\\\n",
       "\tam &  9 & 32 &   0.406250 &   0.4989909 &   0.000 &   0.3846154 &   0.0000000 &  0.000 &   1.000 &   1.000 &  0.3640159 & -1.92474143 &  0.08820997\\\\\n",
       "\tgear & 10 & 32 &   3.687500 &   0.7378041 &   4.000 &   3.6153846 &   1.4826000 &  3.000 &   5.000 &   2.000 &  0.5288545 & -1.06975068 &  0.13042656\\\\\n",
       "\tcarb & 11 & 32 &   2.812500 &   1.6152000 &   2.000 &   2.6538462 &   1.4826000 &  1.000 &   8.000 &   7.000 &  1.0508738 &  1.25704307 &  0.28552971\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A psych: 11 × 13\n",
       "\n",
       "| <!--/--> | vars &lt;int&gt; | n &lt;dbl&gt; | mean &lt;dbl&gt; | sd &lt;dbl&gt; | median &lt;dbl&gt; | trimmed &lt;dbl&gt; | mad &lt;dbl&gt; | min &lt;dbl&gt; | max &lt;dbl&gt; | range &lt;dbl&gt; | skew &lt;dbl&gt; | kurtosis &lt;dbl&gt; | se &lt;dbl&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|---|---|---|---|---|\n",
       "| mpg |  1 | 32 |  20.090625 |   6.0269481 |  19.200 |  19.6961538 |   5.4114900 | 10.400 |  33.900 |  23.500 |  0.6106550 | -0.37276603 |  1.06542396 |\n",
       "| cyl |  2 | 32 |   6.187500 |   1.7859216 |   6.000 |   6.2307692 |   2.9652000 |  4.000 |   8.000 |   4.000 | -0.1746119 | -1.76211977 |  0.31570933 |\n",
       "| disp |  3 | 32 | 230.721875 | 123.9386938 | 196.300 | 222.5230769 | 140.4763500 | 71.100 | 472.000 | 400.900 |  0.3816570 | -1.20721195 | 21.90947271 |\n",
       "| hp |  4 | 32 | 146.687500 |  68.5628685 | 123.000 | 141.1923077 |  77.0952000 | 52.000 | 335.000 | 283.000 |  0.7260237 | -0.13555112 | 12.12031731 |\n",
       "| drat |  5 | 32 |   3.596563 |   0.5346787 |   3.695 |   3.5792308 |   0.7042350 |  2.760 |   4.930 |   2.170 |  0.2659039 | -0.71470062 |  0.09451874 |\n",
       "| wt |  6 | 32 |   3.217250 |   0.9784574 |   3.325 |   3.1526923 |   0.7672455 |  1.513 |   5.424 |   3.911 |  0.4231465 | -0.02271075 |  0.17296847 |\n",
       "| qsec |  7 | 32 |  17.848750 |   1.7869432 |  17.710 |  17.8276923 |   1.4158830 | 14.500 |  22.900 |   8.400 |  0.3690453 |  0.33511422 |  0.31588992 |\n",
       "| vs |  8 | 32 |   0.437500 |   0.5040161 |   0.000 |   0.4230769 |   0.0000000 |  0.000 |   1.000 |   1.000 |  0.2402577 | -2.00193762 |  0.08909831 |\n",
       "| am |  9 | 32 |   0.406250 |   0.4989909 |   0.000 |   0.3846154 |   0.0000000 |  0.000 |   1.000 |   1.000 |  0.3640159 | -1.92474143 |  0.08820997 |\n",
       "| gear | 10 | 32 |   3.687500 |   0.7378041 |   4.000 |   3.6153846 |   1.4826000 |  3.000 |   5.000 |   2.000 |  0.5288545 | -1.06975068 |  0.13042656 |\n",
       "| carb | 11 | 32 |   2.812500 |   1.6152000 |   2.000 |   2.6538462 |   1.4826000 |  1.000 |   8.000 |   7.000 |  1.0508738 |  1.25704307 |  0.28552971 |\n",
       "\n"
      ],
      "text/plain": [
       "     vars n  mean       sd          median  trimmed     mad         min   \n",
       "mpg   1   32  20.090625   6.0269481  19.200  19.6961538   5.4114900 10.400\n",
       "cyl   2   32   6.187500   1.7859216   6.000   6.2307692   2.9652000  4.000\n",
       "disp  3   32 230.721875 123.9386938 196.300 222.5230769 140.4763500 71.100\n",
       "hp    4   32 146.687500  68.5628685 123.000 141.1923077  77.0952000 52.000\n",
       "drat  5   32   3.596563   0.5346787   3.695   3.5792308   0.7042350  2.760\n",
       "wt    6   32   3.217250   0.9784574   3.325   3.1526923   0.7672455  1.513\n",
       "qsec  7   32  17.848750   1.7869432  17.710  17.8276923   1.4158830 14.500\n",
       "vs    8   32   0.437500   0.5040161   0.000   0.4230769   0.0000000  0.000\n",
       "am    9   32   0.406250   0.4989909   0.000   0.3846154   0.0000000  0.000\n",
       "gear 10   32   3.687500   0.7378041   4.000   3.6153846   1.4826000  3.000\n",
       "carb 11   32   2.812500   1.6152000   2.000   2.6538462   1.4826000  1.000\n",
       "     max     range   skew       kurtosis    se         \n",
       "mpg   33.900  23.500  0.6106550 -0.37276603  1.06542396\n",
       "cyl    8.000   4.000 -0.1746119 -1.76211977  0.31570933\n",
       "disp 472.000 400.900  0.3816570 -1.20721195 21.90947271\n",
       "hp   335.000 283.000  0.7260237 -0.13555112 12.12031731\n",
       "drat   4.930   2.170  0.2659039 -0.71470062  0.09451874\n",
       "wt     5.424   3.911  0.4231465 -0.02271075  0.17296847\n",
       "qsec  22.900   8.400  0.3690453  0.33511422  0.31588992\n",
       "vs     1.000   1.000  0.2402577 -2.00193762  0.08909831\n",
       "am     1.000   1.000  0.3640159 -1.92474143  0.08820997\n",
       "gear   5.000   2.000  0.5288545 -1.06975068  0.13042656\n",
       "carb   8.000   7.000  1.0508738  1.25704307  0.28552971"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "library(psych)  # library function used to load the add on packages we need to run our code, \n",
    "                # here we need psych package so we loaded it using library function.\n",
    "\n",
    "describe(mtcars)  # returns Basic descriptive statistics for input dataset/dataframe."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 11,
   "id": "855ef542",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-07-17T12:13:08.962898Z",
     "iopub.status.busy": "2022-07-17T12:13:08.955433Z",
     "iopub.status.idle": "2022-07-17T12:13:08.999178Z",
     "shell.execute_reply": "2022-07-17T12:13:08.996966Z"
    },
    "papermill": {
     "duration": 0.060128,
     "end_time": "2022-07-17T12:13:09.001989",
     "exception": false,
     "start_time": "2022-07-17T12:13:08.941861",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'psych'</li><li>'describe'</li><li>'data.frame'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'psych'\n",
       "\\item 'describe'\n",
       "\\item 'data.frame'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'psych'\n",
       "2. 'describe'\n",
       "3. 'data.frame'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       "[1] \"psych\"      \"describe\"   \"data.frame\""
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'mpg'</li><li>'cyl'</li><li>'disp'</li><li>'hp'</li><li>'drat'</li><li>'wt'</li><li>'qsec'</li><li>'vs'</li><li>'am'</li><li>'gear'</li><li>'carb'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'mpg'\n",
       "\\item 'cyl'\n",
       "\\item 'disp'\n",
       "\\item 'hp'\n",
       "\\item 'drat'\n",
       "\\item 'wt'\n",
       "\\item 'qsec'\n",
       "\\item 'vs'\n",
       "\\item 'am'\n",
       "\\item 'gear'\n",
       "\\item 'carb'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'mpg'\n",
       "2. 'cyl'\n",
       "3. 'disp'\n",
       "4. 'hp'\n",
       "5. 'drat'\n",
       "6. 'wt'\n",
       "7. 'qsec'\n",
       "8. 'vs'\n",
       "9. 'am'\n",
       "10. 'gear'\n",
       "11. 'carb'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       " [1] \"mpg\"  \"cyl\"  \"disp\" \"hp\"   \"drat\" \"wt\"   \"qsec\" \"vs\"   \"am\"   \"gear\"\n",
       "[11] \"carb\""
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'vars'</li><li>'n'</li><li>'mean'</li><li>'sd'</li><li>'median'</li><li>'trimmed'</li><li>'mad'</li><li>'min'</li><li>'max'</li><li>'range'</li><li>'skew'</li><li>'kurtosis'</li><li>'se'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'vars'\n",
       "\\item 'n'\n",
       "\\item 'mean'\n",
       "\\item 'sd'\n",
       "\\item 'median'\n",
       "\\item 'trimmed'\n",
       "\\item 'mad'\n",
       "\\item 'min'\n",
       "\\item 'max'\n",
       "\\item 'range'\n",
       "\\item 'skew'\n",
       "\\item 'kurtosis'\n",
       "\\item 'se'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'vars'\n",
       "2. 'n'\n",
       "3. 'mean'\n",
       "4. 'sd'\n",
       "5. 'median'\n",
       "6. 'trimmed'\n",
       "7. 'mad'\n",
       "8. 'min'\n",
       "9. 'max'\n",
       "10. 'range'\n",
       "11. 'skew'\n",
       "12. 'kurtosis'\n",
       "13. 'se'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       " [1] \"vars\"     \"n\"        \"mean\"     \"sd\"       \"median\"   \"trimmed\" \n",
       " [7] \"mad\"      \"min\"      \"max\"      \"range\"    \"skew\"     \"kurtosis\"\n",
       "[13] \"se\"      "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "s=describe(mtcars)  # store statistics of mtcars dataset into s variable to use for further operations\n",
    "class(s)  # checking class of output of describe function stored in variable s\n",
    "\n",
    "rownames(s) # returns row names of statistical table returned by describe function\n",
    "\n",
    "colnames(s) # returns column names of statistical table returned by describe function, \n",
    "            # these col names are the operations performed on dataset"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 12,
   "id": "bad60ce8",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-07-17T12:13:09.031509Z",
     "iopub.status.busy": "2022-07-17T12:13:09.029875Z",
     "iopub.status.idle": "2022-07-17T12:13:09.059205Z",
     "shell.execute_reply": "2022-07-17T12:13:09.057327Z"
    },
    "papermill": {
     "duration": 0.045905,
     "end_time": "2022-07-17T12:13:09.061867",
     "exception": false,
     "start_time": "2022-07-17T12:13:09.015962",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "5"
      ],
      "text/latex": [
       "5"
      ],
      "text/markdown": [
       "5"
      ],
      "text/plain": [
       "[1] 5"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# GET THE MAX VALUE OF GEAR COLUMN OF mtcars DATASET STORED IN s VARIABLE. \n",
    "s[\"gear\",\"max\"]  # passed gear as row name and max as col name to get max value of gear row from above table"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 13,
   "id": "585cf5e4",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-07-17T12:13:09.089489Z",
     "iopub.status.busy": "2022-07-17T12:13:09.087829Z",
     "iopub.status.idle": "2022-07-17T12:13:09.121512Z",
     "shell.execute_reply": "2022-07-17T12:13:09.119683Z"
    },
    "papermill": {
     "duration": 0.050042,
     "end_time": "2022-07-17T12:13:09.123964",
     "exception": false,
     "start_time": "2022-07-17T12:13:09.073922",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A psych: 3 × 3</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>max</th><th scope=col>sd</th><th scope=col>skew</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>gear</th><td> 5.000</td><td>0.7378041</td><td>0.5288545</td></tr>\n",
       "\t<tr><th scope=row>mpg</th><td>33.900</td><td>6.0269481</td><td>0.6106550</td></tr>\n",
       "\t<tr><th scope=row>wt</th><td> 5.424</td><td>0.9784574</td><td>0.4231465</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A psych: 3 × 3\n",
       "\\begin{tabular}{r|lll}\n",
       "  & max & sd & skew\\\\\n",
       "  & <dbl> & <dbl> & <dbl>\\\\\n",
       "\\hline\n",
       "\tgear &  5.000 & 0.7378041 & 0.5288545\\\\\n",
       "\tmpg & 33.900 & 6.0269481 & 0.6106550\\\\\n",
       "\twt &  5.424 & 0.9784574 & 0.4231465\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A psych: 3 × 3\n",
       "\n",
       "| <!--/--> | max &lt;dbl&gt; | sd &lt;dbl&gt; | skew &lt;dbl&gt; |\n",
       "|---|---|---|---|\n",
       "| gear |  5.000 | 0.7378041 | 0.5288545 |\n",
       "| mpg | 33.900 | 6.0269481 | 0.6106550 |\n",
       "| wt |  5.424 | 0.9784574 | 0.4231465 |\n",
       "\n"
      ],
      "text/plain": [
       "     max    sd        skew     \n",
       "gear  5.000 0.7378041 0.5288545\n",
       "mpg  33.900 6.0269481 0.6106550\n",
       "wt    5.424 0.9784574 0.4231465"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A psych: 3 × 3</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>max</th><th scope=col>sd</th><th scope=col>skew</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>gear</th><td> 5.000</td><td>0.7378041</td><td>0.5288545</td></tr>\n",
       "\t<tr><th scope=row>mpg</th><td>33.900</td><td>6.0269481</td><td>0.6106550</td></tr>\n",
       "\t<tr><th scope=row>wt</th><td> 5.424</td><td>0.9784574</td><td>0.4231465</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A psych: 3 × 3\n",
       "\\begin{tabular}{r|lll}\n",
       "  & max & sd & skew\\\\\n",
       "  & <dbl> & <dbl> & <dbl>\\\\\n",
       "\\hline\n",
       "\tgear &  5.000 & 0.7378041 & 0.5288545\\\\\n",
       "\tmpg & 33.900 & 6.0269481 & 0.6106550\\\\\n",
       "\twt &  5.424 & 0.9784574 & 0.4231465\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A psych: 3 × 3\n",
       "\n",
       "| <!--/--> | max &lt;dbl&gt; | sd &lt;dbl&gt; | skew &lt;dbl&gt; |\n",
       "|---|---|---|---|\n",
       "| gear |  5.000 | 0.7378041 | 0.5288545 |\n",
       "| mpg | 33.900 | 6.0269481 | 0.6106550 |\n",
       "| wt |  5.424 | 0.9784574 | 0.4231465 |\n",
       "\n"
      ],
      "text/plain": [
       "     max    sd        skew     \n",
       "gear  5.000 0.7378041 0.5288545\n",
       "mpg  33.900 6.0269481 0.6106550\n",
       "wt    5.424 0.9784574 0.4231465"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# GET max, standard daviation, skew columns of gear mpg rows\n",
    "# to get the values we need to create vector of rows and columns to get these values.\n",
    "s[c(\"gear\",\"mpg\",\"wt\"),c(\"max\",\"sd\",\"skew\")]\n",
    "\n",
    "#alternate we can pass row, col numbers of these names\n",
    "s[c(10,1,6), c(9,4,11)]"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "82082fcc",
   "metadata": {
    "papermill": {
     "duration": 0.0129,
     "end_time": "2022-07-17T12:13:09.149164",
     "exception": false,
     "start_time": "2022-07-17T12:13:09.136264",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": []
  }
 ],
 "metadata": {
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
   "version": "4.0.5"
  },
  "papermill": {
   "default_parameters": {},
   "duration": 5.257322,
   "end_time": "2022-07-17T12:13:09.284126",
   "environment_variables": {},
   "exception": null,
   "input_path": "__notebook__.ipynb",
   "output_path": "__notebook__.ipynb",
   "parameters": {},
   "start_time": "2022-07-17T12:13:04.026804",
   "version": "2.3.4"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
