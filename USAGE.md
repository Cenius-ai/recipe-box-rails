# Usage

Once the application is running, you can interact with it via your browser or using `curl`.

## Pages

### Home Page

The home page is served at the root URL. Open [http://localhost:3000/](http://localhost:3000/) in your browser or run:

```bash
curl http://localhost:3000/
```

It displays a welcome message and a link to browse recipes.

### Recipe Index

Browse all recipes by visiting `http://localhost:3000/recipes`. You can also access it with:

```bash
curl http://localhost:3000/recipes
```

This page lists all seeded recipes, each linking to its detail page.

### Recipe Detail

View a specific recipe by navigating to `/recipes/:id`, for example [http://localhost:3000/recipes/1](http://localhost:3000/recipes/1). With `curl`:

```bash
curl http://localhost:3000/recipes/1
```

The page shows the full details of the selected recipe.

## Navigation

From the home page, click the link to browse the recipe collection. On the index page, click any recipe title to view its details.

## Seed Data

The application comes preloaded with approximately 10 sample recipes. You can add your own by modifying `db/seeds.rb` and re-running `ruby bin/rails db:seed`.