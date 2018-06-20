SELECT
        LIKE_COMMENTS.*,
        USERS.USER_NAME
    FROM
        LIKE_COMMENTS
        LEFT OUTER JOIN USERS ON (LIKE_COMMENTS.INSERT_USER = USERS.USER_ID)
    WHERE
        LIKE_COMMENTS.COMMENT_NO = ?
        AND LIKE_COMMENTS.DELETE_FLAG = 0
    ORDER BY
        LIKE_COMMENTS.UPDATE_DATETIME DESC LIMIT ? OFFSET ?;



