[//]: # (CTRL SHIFT M to preview markdown)


# Chisel

##### Chisel is a markdown parser that takes a markdown file, parses the file, and outputs the text in HTML.
&nbsp;

We're going to use Chisel from the command line, reading in Markdown files and writing out HTML. It'll go like this:

```bash
$ ruby ./lib/chisel.rb my_input.markdown my_output.html
Converted my_input.markdown (6 lines) to my_output.html (8 lines)
```

Where `my_input.markdown` is a file like this:

```markdown
# My Life in Desserts

## Chapter 1: The Beginning

"You just *have* to try the cheesecake," he said. "Ever since it appeared in
**Food & Wine** this place has been packed every night."
```
