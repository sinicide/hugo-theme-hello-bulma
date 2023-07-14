# Hello Bulma

## Refactored panr/hugo-theme-hello-friend theme with Bulma.io CSS Framework into my own blog theme

## Todo:
- [x] Refactored theme
- [ ] Create workflow

## Updating Bulma CSS Style
Follow steps to update to specific version of Bulma.

```
export BULMA_VERSION=0.9.4
make bulma-update
```

## Updating PrismJS

[PrismJS Releases](https://github.com/PrismJS/prism/releases)

```
make prism-update
```

## Comments
[https://giscus.app/](https://giscus.app/)

## Built-in shortcodes

- **`image`** (prop required: **`src`**; props options: **`alt`**)
  - eq: `{{< image src="images/psyduck.png" alt="Cute Psyduck" position="left" style="border-radius: 8px;" >}}`
- **`figure`** (same as `image`, plus a few optional props: **`caption`**)
  - eq: `{{< figure src="images/psyduck.png" alt="Cute Psyduck" caption="A Cute Psyduck [link](https://pokemon.com)" >}}`
- **`prompt`** (optional prop: **`type`**; (**info** is default | warn | danger))
  - eq: `{{< prompt type="danger" >}}Here is a prompt text of type danger{{< /prompt >}}`
- **`quote`** (prop required: **`text`**, and **`author`**)
  - eq: `{{< quote text="It's not who I am underneath, but what I do that defines me." author="Batman" >}}`

## How to add a cover image to your posts

Adding a cover image to your post is simple and there are two options when you edit your `index.md` file in `content/posts/blog-entry-xy/index.md`:

* Use `cover = "/path/to/absolute/img.jpg"` to link an absolute image
  * Resulting in `https://www.yourpage.com/path/to/absolute/img.jpg`
* Use `cover = "img.jpg"` and `useRelativeCover = true` to link the image relative to the blog post folder
  * Resulting in `https://www.yourpage.com/posts/blog-entry-xy/img.jpg`
* Use `coverAlt = "description of image"` to add custom alt text to the cover image (defaults to post or page title as alt text)
* Use `coverCaption = "Image Credit to [Barry Bluejeans](https://unsplash.com/)"` to add a caption for the cover image.

## Credits to

Based on the theme from [https://github.com/panr/hugo-theme-hello-friend](https://github.com/panr/hugo-theme-hello-friend)
