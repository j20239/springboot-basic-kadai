INSERT INTO todos (id, title, priority, status) VALUES
(default, '売上レポートの作成', '高', '着手中'),
(default, '定例会議への参加', '高', '未着手'),
(default, '提案書の作成', '高', '着手中'),
(default, '顧客フィードバックの分析', '中', '未着手'),
(default, '新人トレーニング計画の作成', '低', '未着手')
ON CONFLICT (id) DO NOTHING;
