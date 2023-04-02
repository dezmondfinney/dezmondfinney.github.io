<script>
  import tasks from "../../public/tasks.json";
  import Task from "../components/task.svelte";
</script>

<div class="border bg-blue-200 rounded-2xl p-4">
  <input class="w-full p-2 rounded" type="text" placeholder="quick add task" />
  <div class="flex">
    <button class="p-3">filter</button>
    <button class="p-3">sort</button>
    <button class="p-3">completed</button>
  </div>
  <ul>
    {#each tasks as task}
      <li class="mb-4">
        <Task {task} />
      </li>
    {/each}
  </ul>
  <button class="bg-green-500 rounded p-3">Add Task</button>
  <form class="flex flex-col" action="submit">
    <h2 class="text-xl font-bold mb-2">
      Quick Add
    </h2>
    <input type="text" placeholder="description" />
    <input type="text" placeholder="project" />
    <input type="date" placeholder="project" />
  </form>
</div>

<style></style>
