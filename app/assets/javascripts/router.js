window.Lunchiatto.Router = Marionette.AppRouter.extend({
  appRoutes: {
    '(/)': 'pageIndex',
    'invitations/:invitationId(/)': 'showInvitation',
    'orders/today(/)(:orderId)(/)': 'ordersToday',
    'you(/)': 'yourBalances',
    'others(/)': 'othersBalances',
    'orders(/)': 'ordersIndex',
    'orders/new(/)': 'newOrder',
    'orders/:orderId(/)': 'showOrder',
    'orders/:orderId/edit(/)': 'editOrder',
    'orders/:orderId/dishes/:dishId/edit(/)': 'editDish',
    'orders/:orderId/dishes/new(/)': 'newDish',
    'account_numbers(/)': 'accountNumbers',
    'settings(/)': 'settings',
    'transfers(/)': 'transfersIndex',
    'transfers/new(/)': 'newTransfer',
    'members(/)': 'members'
  }
});
