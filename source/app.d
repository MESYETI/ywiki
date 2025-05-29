module ywiki.app;

import std.file;
import std.path;
import std.array;
import std.stdio;
import std.format;
import dmarkdown;

void main(string[] args) {
	// args: dest-folder src-folder template
	string templ = readText(args[3]);

	foreach (e ; dirEntries(args[2], "*.md", SpanMode.shallow)) {
		string html = filterMarkdown(
			readText(e.name)
				.replace("<```", "<div class=\"codeBox\"><pre><code>")
				.replace("```>", "</code></pre></div>"),
			MarkdownFlags.backtickCodeBlocks
		);
		string title = e.baseName().stripExtension();
		string path = format("%s/%s.html", args[1], title);

		std.file.write(path, templ.replace("$content$", html).replace("$title$", title));
		writeln(e.name);
	}
}
