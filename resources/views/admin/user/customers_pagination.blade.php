@if(isset($customers))
    <?php $i=$customers->perPage() * ($customers->currentPage()-1);?>
    @foreach ($customers as $customer)
        <tr>

            <td> {{ ++$i }} </td>
            <td>{{ $customer->name }}</td>
            
            <td>{{ $customer->email }}</td>
            <td>{{ $customer->phone }}</td>
            <td>{{ $customer->address }}</td>
            <td>{{ $customer->wallet }}</td>
           <td>{{date('d-m-Y H:m s',strtotime($customer->created_at))}}</td>
            <td>
                <a title="edit" href="{{ url('admin/customers/edit') }}/{{ $customer->id }}">
                    <span class="glyphicon glyphicon-plus btn btn-success">Add Blance</span>
                </a>

                <a title="delete" href="{{ url('admin/customers/delete') }}/{{ $customer->id }}" onclick="return confirm('Are you want to delete this Product')">
                    <span class="glyphicon glyphicon-trash btn btn-danger"></span>
                </a></td>
        </tr>

    @endforeach

    <tr>
        <td colspan="9" align="center">
            {!! $customers->links() !!}
        </td>
    </tr>
@endif


