QBShared = QBShared or {}
QBShared.ForceJobDefaultDutyAtLogin = true -- true: Force duty state to jobdefaultDuty | false: set duty state from database last saved
QBShared.QBJobsStatus = false -- true: integrate qb-jobs into the whole of qb-core | false: treat qb-jobs as an add-on resource.
QBShared.Jobs = {} -- All of below has been migrated into qb-jobs
if QBShared.QBJobsStatus then return end
QBShared.Jobs = {
	['Agent'] = {
		label = 'Agent',
		defaultDuty = true,
		offDutyPay = true,
		grades = {
            ['0'] = {
                name = 'Agent',
                payment = 0
            },
        },
	},
    ['Rouge'] = {
        label = 'Rouge',
        defaultDuty = true,
        offDutyPay = true,
        grades = {
            ['0'] = {
                name = 'Rouge Agent',
                payment = 0
            },
        },
    },
}
