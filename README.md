# Credit Risk

## Database Setup
*Note*: It is probably easier to copy the contents of each sql file and paste into the SQL Editor.
1. Open your favorite database application (e.g., pgAdmin, DBeaver, SQuirrelSQL)
2. Login to the postgres database (admin db)
3. Open a SQL Editor
4. Run the create_db.sql
5. After proj4 is created, connect to proj4 and open a SQL Editor
6. Run create_dbobjects.sql (proj4_sch.test_temp is a test table to see the objects created after Refresh)
7. Create a sql_config.py (this file should not be pushed to the repository)</br>
    sql_config.py Example:</br>
    #localhost</br>
    protocol = 'postgresql'</br>
    username = 'postgres'</br>
    password = '<password>'</br>
    host = 'localhost'</br>
    port = 5432</br>
    database_name = 'proj4'</br>
8. Open etl_notebook.ipynb (Kernel: PythonData)
    * Run the cells marked Run
9. Run proj4.sql
    * Creates a table backup of the original app_data table
    * Updates all text columns to numeric (e.g., column=WEEKDAY_APPR_PROCESS_START modified to 1 for Sunday, 2 for Monday, etc.)
10. Run db_views.sql
    * Creates a view with all columns
    * Creates a view without target column