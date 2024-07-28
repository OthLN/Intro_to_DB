-- Select the alx_book_store database
USE alx_book_store;

-- Retrieve table structure information from INFORMATION_SCHEMA
SELECT
    COLUMN_NAME AS 'Column Name',
    COLUMN_TYPE AS 'Column Type',
    IS_NULLABLE AS 'Nullable',
    COLUMN_KEY AS 'Key',
    EXTRA AS 'Extra Info'
FROM
    INFORMATION_SCHEMA.COLUMNS
WHERE
    TABLE_SCHEMA = 'alx_book_store'
    AND TABLE_NAME = 'Books';
