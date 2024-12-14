#!/bin/bash

#Script to insert data from courses.csv and students.csv into students database

# IFS - Input Field Separators

PSQL="psql -X --username=freecodecamp --dbname=students --no-align --tuples-only -c"

echo $($PSQL "TRUNCATE games, majors, courses, majors_courses")

cat courses_test.csv | while IFS="," read MAJOR COURSE
do

  if [[ $MAJOR != major ]]
  then

    # get major_id
    MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major = '$MAJOR'")

    # if not found
    if [[ -z $MAJOR_ID ]]
    then
      # insert major
      INSERT_MAJOR_RESULT=$($PSQL "INSERT INTO majors(major) VALUES('$MAJOR')")

      if [[ $INSERT_MAJOR_RESULT == 'INSERT 0 1' ]]
      then
        echo Inserted into majors, $MAJOR
      fi

      # get new major_id
      MAJOR_ID=$($PSQL "SELECT major_id FROM majors WHERE major='$MAJOR'")
    fi
  fi

  if [[ $COURSE != course ]]
  then
    # get course_id
    COURSE_ID=$($PSQL "SELECT course_id FROM courses WHERE course='$COURSE'")

    # if not found
      if [[ -z $COURSE_ID ]]
      then
        # insert course
        INSERT_COURSE_RESULT=$($PSQL "INSERT INTO courses(course) VALUES('$COURSE')")

        if [[ $INSERT_COURSE_RESULT == 'INSERT 0 1' ]]
        then
          echo Inserted into courses, $COURSE
        fi
        # get new course_id
        COURSE_ID=$($PSQL "SELECT course_id FROM courses WHERE course='$COURSE'")
      fi
  fi

  if [[ $MAJOR != major && $COURSE != course ]]
  then 
    # insert into majors_courses
  INSERT_MAJORS_COURSES_RESULT=$($PSQL "INSERT INTO majors_courses(major_id, course_id) VALUES($MAJOR_ID, $COURSE_ID)")

    if [[ $INSERT_MAJORS_COURSES_RESULT == "INSERT 0 1" ]]
    then
      echo "Inserted into majors_courses, $MAJOR : $COURSE"
    fi
  fi

done