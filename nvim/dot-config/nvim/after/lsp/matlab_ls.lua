return {
  cmd = { "matlab_ls", "--stdio" },
  settings = {
    MATLAB = {
      indexWorkspace = true,
      installPath = '/usr/local/MATLAB/R2026a',
      matlabConnectionTiming = 'onStart',
      telemetry = false,
    }
  },
  single_file_support = true,
}
