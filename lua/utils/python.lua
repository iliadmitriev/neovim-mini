local M = {}

--- Find the executable path for a Python console script (e.g., "pytest", "pylint")
--- Searches in:
---   1. Current virtual environment (via $VIRTUAL_ENV or .venv/)
---   2. Global Python (via python3/python in PATH)
--- @param script_name string e.g., "pytest", "pylint", "black"
--- @return string|nil absolute path to script executable, or nil if not found
M.find_script_executable = function(script_name)
  if not script_name or script_name == "" then return nil end

  -- Helper: build script path for a given Python prefix (venv root)
  local function get_script_path(venv_root)
    if vim.fn.has("win32") == 1 then
      return venv_root .. "/Scripts/" .. script_name .. ".exe"
    else
      return venv_root .. "/bin/" .. script_name
    end
  end

  -- 1. Check active virtual environment ($VIRTUAL_ENV)
  local virtual_env = os.getenv("VIRTUAL_ENV")
  if virtual_env then
    local exe = get_script_path(virtual_env)
    if vim.loop.fs_stat(exe) then return exe end
  end

  -- 2. Check local .venv (uv, poetry default)
  local local_venv = vim.fn.fnamemodify(".venv", ":p")
  local exe = get_script_path(local_venv)
  if vim.loop.fs_stat(exe) then return exe end

  -- 3. Fallback: find global Python and assume scripts are in same dir as python
  local python_exe = vim.fn.exepath("python3")
  if python_exe == "" then python_exe = vim.fn.exepath("python") end
  if python_exe ~= "" then
    -- Resolve to absolute path
    python_exe = vim.fn.fnamemodify(python_exe, ":p")
    -- Extract directory (e.g., /usr/bin/python3 → /usr/bin)
    local python_dir = vim.fn.fnamemodify(python_exe, ":h")
    local global_exe = python_dir .. "/" .. script_name
    if vim.fn.has("win32") == 1 then global_exe = global_exe .. ".exe" end
    if vim.loop.fs_stat(global_exe) then return global_exe end
  end

  -- Not found
  return nil
end

return M
