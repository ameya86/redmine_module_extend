require 'redmine_module_extend'

Redmine::Plugin.register :redmine_module_extend do
  name 'Redmine Module Extend plugin'
  author 'OZAWA Yasuhiro'
  description 'Hide modules, and append description modules.'
  version '0.0.1'
  url 'https://github.com/ameya86/redmine_module_extend'
  author_url 'https://github.com/ameya86'

  settings :default => {
      'hide_modules' => %w(news documents files boards),
      'description' => {
        'issue_tracking' => 'チケットにより作業を管理します。',
        'time_tracking' => '作業時間を記録し、集計することができます。',
        'news' => 'お知らせを共有します。ニュースはホームやマイページにも表示されます。',
        'documents' => 'プロジェクトに関係する資料を管理します。',
        'files' => '成果物の配布ページです。',
        'wiki' => 'ノウハウを蓄積するためのWikiです。',
        'repository' => 'SubversionやGitのリポジトリや履歴を表示できます。',
        'boards' => '掲示板です。チケットですべきではない議論などにどうぞ。',
        'calendar' => 'チケットやバージョンをカレンダー上に表示します。',
        'gantt' => 'チケットやバージョンの進捗をガントチャートで確認できます。',
      },
    }, :partial => 'module_extends/settings'
end
