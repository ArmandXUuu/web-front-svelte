let todos = [];

export async function GET() {
    return {
        status: 200,
        body: todos
    }
}

/** @type {import('@sveltejs/kit').RequestHandler} */
export async function POST({request}) {
    let formData = await request.formData();
    //todos.push(request);
    let text_test = formData.get("text_test")
    todos.push({
        text: text_test,
        done: false
    })

    return {
        status: 303,
        //body: "Hello from POST api/todo"
        headers: {
            location: "/"
        }
    }
}