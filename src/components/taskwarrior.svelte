<script>
  import tasks from "../../public/tasks.json";
  import Task from "../components/task.svelte";
</script>

<div class="border prose rounded-2xl p-4">
  {#each tasks as task}
    <Task task={task} />
  {/each}
</div>

<style></style>