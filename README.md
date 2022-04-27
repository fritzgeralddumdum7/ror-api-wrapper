# Quotable API Wrapper

This API wrapper is intended for educational purposes only!.
## API Endpoint <!-- omit in toc -->

The endpoint used in this wrapper is [api.quotable.io](https://api.quotable.io/quotes). You can also visit the endpoint's github repository [here](https://github.com/lukePeavey/quotable)

## API Reference <!-- omit in toc -->

- [Get random quote](#get-random-quote)
- [Quotes](#list-quotes)
- [Get Quote By ID](#get-quote-by-id)
- [Authors](#list-authors)

## Get random quote

```HTTP
GET /random
```

Returns a single random quote from the database

**Response**

```ts
{
  _id: string
  content: string
  author: string
  authorSlug: string
  length: number
  tags: string[]
}
```

**Examples**

Random Quote [try in browser](https://api.quotable.io/random)

```HTTP
GET /random
```

Random Quote with tags "technology" **`AND`** "famous-quotes" [try in browser](https://api.quotable.io/random?tags=technology,famous-quotes)


<br>

## List Quotes

```HTTP
GET /quotes
```

Get all quotes matching a given query. By default, this will return a paginated list of all quotes, sorted by `_id`.

**Response**

```ts
{
  count: number
  totalCount: number
  page: number
  totalPages: number
  lastItemIndex: number
  results: Array<{
    _id: string
    content: string
    author: string
    authorSlug: string
    length: number
    tags: string[]
  }>
}
```

**Examples**

Get the first page of quotes, with 20 results per page [try in browser](https://quotable.io/quotes?page=1)

<br>

## Get Quote By ID

```HTTP
GET /quotes/:id
```

Get a quote by its ID

**Response**

```ts
{
  _id: string
  content: string
  author: string
  length: number
  tags: string[]
}
```

<br>

## List Authors

```HTTP
GET /authors
```

Get all authors matching the given query

**Response**

```ts
{
  count: number
  totalCount: number
  page: number
  totalPages: number
  lastItemIndex: number | null
  results: Array<{
    _id: string
    bio: string
    description: string
    link: string
    name: string
    slug: string
    quoteCount: string
  }>
}
```

**Examples**

Get all authors, sorted alphabetically by name [try in browser](https://quotable.io/authors)
