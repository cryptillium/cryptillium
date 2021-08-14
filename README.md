I'm an experienced Applications Developer.

 ---

### Languages

![Python](https://img.shields.io/badge/-Python-000?&logo=Python)
![JavaScript](https://img.shields.io/badge/-JavaScript-000?&logo=JavaScript)
![TypeScript](https://img.shields.io/badge/-TypeScript-000?&logo=TypeScript)
![C++](https://img.shields.io/badge/-C++-000?&logo=c%2b%2b&logoColor=00599C)
![SQL](https://img.shields.io/badge/-SQL-000?&logo=MySQL)

### Technologies
![React](https://img.shields.io/badge/-React-000?&logo=React)
![Redis](https://img.shields.io/badge/-Redis-000?&logo=Redis)
![Node.js](https://img.shields.io/badge/-Node.js-000?&logo=node.js)


```js script
import "./my-card.js";
import { html } from "lit-html";
```

<my-card header="from attribute"></my-card>

## Show it with properties

Rendering via a template function with lit-html allows to use for example properties.

```js story
const headlineText = "Headline Text";
export const myCard = () => html`
  <my-card .header=${headlineText}>Main content text</my-card>
`;
```

## Show it within a frame

Show it within a frame and

```js preview-story
export const cardWithFrame = () => html`
  <my-card .header=${"My Headline Nr: " + 2 * 2}>Main content text</my-card>
`;
```

## Have a component with a fixed headlineText

You can provide a header as a property or attribute.

still checking things out

```js preview-story
export const myFixedCard = () => html`
  <my-card header="Fixed Header">Main content text</my-card>
`;
```
<!--
**cryptillium/cryptillium** is a ✨ _special_ ✨ repository because its `README.md` (this file) appears on your GitHub profile.

Here are some ideas to get you started:

- 🔭 I’m currently working on ...
- 🌱 I’m currently learning ...
- 👯 I’m looking to collaborate on ...
- 🤔 I’m looking for help with ...
- 💬 Ask me about ...
- 📫 How to reach me: ...
- 😄 Pronouns: ...
- ⚡ Fun fact: ...
-->
