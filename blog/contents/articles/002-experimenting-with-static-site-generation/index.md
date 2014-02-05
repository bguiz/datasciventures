---
Title: Experimenting with Static Site Generation
author: bguiz
date: 2014-02-01
template: article.jade
tags: blog engine, static site generation, wintersmith
---

***Winter is coming!!!*** Indeed the most popular refrain from Game of Thrones applies to the blog too. My [main blog](http://blog.bguiz.com) is served by Tumblr. When setting up this new blog, I gravitated toward Tumblr yet again, but then I recalled my decision making process when setting up my main blog. It was:

<span class="more"></span>

I want to blog --> Wordpress! --> Admin interface too clunky and slow --> OK let's try Tumblr --> But wait, how about using a static site generator, so I can write posts in Markdown --> Jekyll! --> Getting set up was too involved --> Back to Tumblr --> Oooh, Tumblr supports Markdown --> Tumblr it is!

I was pretty happy with that decision, and Tumblr is a great platform. I see it as the cross of Twitter and Wordpress - social network meets blogging. When setting up this new blog though, I thought back to that decision, and decided to give static site generation another go. I had heard of Ghost and Wintersmith, and decided to give Wintersmith a go because it was more general purpose (Ghost is targeted only towards blogging).

## Wintersmith + Github pages

It was pretty easy getting this set up going. There were just two pain points, which I figured out quite quickly.

The basic idea here is that I want to create a subdomain on bguiz.com (my own domain) that serves up content from bguiz.github.io/datasciventures (github pages). Github pages is a free hosting service provded by github for your projects. It really is just a file server over HTTP, so only static sites are a go.

Enter static site generation. Tools like Jekyll and Wintersmith allow one to author all their content offline, using markdown, templates, and all the other bells and whistles that you would come across in a blogging engine. You then "build" a static version of this dynamic content, and upload these compiled assets to a static only server, and you get a blog. The readers of your blog will not even realise that it is a static site.

### Solving the two pain points

1. DNS and related configuration

Do this first, because DNS configurations on your registar take a while to propagate (TTL). 

In order to get `http://datasciventures.bguiz.com` to display exactly what is displayed at `http://bguiz.github.io/datasciventures` you will need to do the following:

	- Modify your DNS registrar's Host Records:

			Host Name: datasciventures
			IP Adress: bguiz.github.io.
			Record Type: CNAME
			TTL: 60 (or whatever else you prefer)

	- Create a file named `CNAME` in the root of your project, within the `gh-pages` orphan branch
		- If you have yet to create a `gh-pages` branch, follow [these instructions](https://help.github.com/articles/creating-project-pages-manually).
		- Then create the `CNAME` file containing just one line, `datasciventures.bguiz.com`. Here is [the `CNAME` file for this site](https://github.com/bguiz/datasciventures/blob/gh-pages/CNAME).

2. Absolute URLs

Push your `gh-pages` branch, and expect everything to be dandy? Well not quite! Turns out that Wintersmith assumes that the static assets that it compiles will always be hosted at the root URL of its domain. This a valid assumption for most use cases. However, in combination with `gh-pages`, it does not work that well.

There are probably a number of different ways in which this problem can be overcome. I solved this in the most expedient way I could think of, which was to modify the jade templates such that the absolute URLs were prepended with the domain URL - [diff](https://github.com/bguiz/datasciventures/commit/b4486734a53e35c7eccdc3cb21c2b208bc008b51). Of course this will only work if you tell Wintersmith what the domain URL should be - [diff](https://github.com/bguiz/datasciventures/commit/a39b50579a4ba2bb0509b11646bd0bf50c7291e6).

If anyone thinks of a better solution, please let me know!

