# Sometimes it's a README fix, or something like that - which isn't relevant for
# including in a project's CHANGELOG for example
declared_trivial = github.pr_title.include? "#trivial"

# Make it more obvious that a PR is a work in progress and shouldn't be merged yet
warn("PR is classed as Work in Progress") if github.pr_title.include? "[WIP]"

# Warn when there is a big PR
warn("Big PR") if git.lines_of_code > 500

# if git.lines_of_code > 3 && !git.modified_files.include?("CHANGELOG.yml")
if !git.modified_files.include?("CHANGELOG.yml") && !declared_trivial
  repo_url = github.pr_json['head']['repo']['html_url']
  pr_title = github.pr_title
  pr_title += '.' unless pr_title.end_with?('.')
  pr_number = github.pr_json['number']
  pr_url = github.pr_json['html_url']
  pr_author = github.pr_author
  pr_author_url = "https://github.com/#{pr_author}"

  fail("Please include a CHANGELOG entry. \nYou can find it at [CHANGELOG.md](#{repo_url}/blob/master/CHANGELOG.md).")
  changelog_msg = <<-CHANGELOG_FORMAT.gsub(/^ *\|/,'')
  |Note: we use the following format for CHANGELOG entries:
  |```
  | * #{pr_title}  
  |   [##{pr_number}](#{pr_url})
  |   [@#{pr_author}](#{pr_author_url})
  |```
  |:bulb: Don't forget to use 2 spaces after the full stop at the end of the line describing your changes.
  CHANGELOG_FORMAT
  markdown(changelog_msg)
end
