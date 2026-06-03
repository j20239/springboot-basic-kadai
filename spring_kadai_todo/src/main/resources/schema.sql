CREATE TYPE priority_type AS ENUM ('高', '中', '低');
CREATE TYPE status_type AS ENUM ('未着手', '着手中', '完了');

CREATE TABLE IF NOT EXISTS todos (
    id SERIAL PRIMARY KEY,
    title VARCHAR(50) NOT NULL,
    priority priority_type NOT NULL DEFAULT '中',
    status status_type NOT NULL DEFAULT '未着手'
);
