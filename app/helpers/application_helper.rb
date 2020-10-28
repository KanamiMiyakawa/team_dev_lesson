module ApplicationHelper
  def markdown(text)
    html_render = MarkdownParser.new(filter_html: true, hard_wrap: true)
    options = {
      autolink: true,
      space_after_headers: true,
      no_intra_emphasis: true,
      fenced_code_blocks: true,
      tables: true,
      hard_wrap: true,
      xhtml: true,
      lax_html_blocks: true,
      strikethrough: true
    }
    markdown = Redcarpet::Markdown.new(html_render, options)
    markdown.render(text)
  end

  def select_posting_article_path(article)
    if article.new_record?
      agenda_articles_path(article.agenda, article)
    else
      article_path(article)
    end
  end

  def agenda_delete_btn_appearence(agenda)
    if current_user == agenda.user || current_user == agenda.team.owner
      link_to I18n.t('views.button.delete'), agenda_path(agenda.id), method: :delete
    end
  end
end
