# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

module AddClassToMarkdownHeaders
  class Generator < Jekyll::Generator
    def generate(site)
      site.pages.each { |p| update_headings(site, p) }
    end
    def update_headings(site, page)

      # Converts any Markdown link using .md suffix to a .html suffix
      page.content = page.content.gsub(/(\[[^\]]*\]\([^:\)]*)\.md\)/, '\1.html)')

      # page.content = page.content.gsub(/h1/,'{:.title}\n')
    end
  end
end