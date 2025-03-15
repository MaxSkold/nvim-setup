return {
	{
		"mfussenegger/nvim-dap",
		config = function()
			local dap = require('dap')
			local widgets = require('dap.ui.widgets')

			-- Функция для открытия REPL и боковой панели с локальными переменными
			local function open_debug_windows()
				-- Открытие REPL
				dap.repl.open()

				-- Открытие боковой панели с локальными переменными
				local sidebar = widgets.sidebar(widgets.scopes)
				sidebar.open()
			end

			-- Слушатель события начала отладки
			dap.listeners.after['event:start'] = function()
				open_debug_windows() -- Открытие окон при старте отладки
			end

			-- Привязка клавиш для начала отладки и открытия окон
			vim.keymap.set('n', '<leader>dg', function()
				dap.continue() -- Начинаем отладку
				open_debug_windows() -- Открываем окна вручную (если нужно)
			end, { silent = true, desc = "Start debugging and open windows" })
		end
	},
	{
		"leoluz/nvim-dap-go",
		ft = "go",
		config = function()
			require('dap-go').setup {
				dap_configurations = {
					{
						type = "go",
						name = "Launch program", -- Можно назвать конфигурацию как угодно
						request = "launch",
						program = "${file}", -- Указывает на файл для отладки
					},
				},
				delve = {
					path = "dlv",      -- Путь к Delve
					initialize_timeout_sec = 20, -- Время на инициализацию
					port = "${port}",  -- Порт будет выбран случайным образом
					args = {},         -- Дополнительные аргументы
					build_flags = {},  -- Флаги для сборки
					detached = false,  -- Процесс не будет запускаться в отдельном режиме
					cwd = nil,         -- Рабочая директория для запуска
				},
				tests = {
					verbose = false, -- Опционально: если хочешь выводить подробности о тестах
				},
			}
		end
	}
}
