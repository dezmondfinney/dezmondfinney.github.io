<script>
  export let task;
</script>

<link rel="stylesheet" href="../all.min.css">

<div class="flex self-center min-h-12 items-center px-2 py-3 text-gray-600 rounded-[4px] shadow-md bg-white" >
  <div class="pr-3">
    <i class="fa-solid fa-circle-check"></i>
  </div>
  <div>
    <div class="description cursor-pointer">
      {task.description} </div>

    <div class="flex details items-center">
      {#if task.project}
        <i class="fa-solid fa-diagram-project"></i>
        {task.project}
      {/if}

      {#if task.annotations}
        <i class="fa-regular fa-note-sticky"></i>
      {/if}

      {#if task.due}
        <i class="fa-solid fa-bell"></i>
      {/if}

      {#if task.scheduled}
        <i class="fa-regular fa-calendar"></i>
      {/if}
    </div>
  </div>
</div>