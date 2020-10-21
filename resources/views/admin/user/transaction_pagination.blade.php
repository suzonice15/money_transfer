@if(isset($customers))
    <?php $i=$customers->perPage() * ($customers->currentPage()-1);?>
    @foreach ($customers as $customer)
        <tr>

            <td> {{ ++$i }} </td>
            <td>{{ $customer->name }}</td>

            <td>{{ $customer->email }}</td>
            <td>{{ $customer->phone }}</td>
            <td>


                @if($customer->status==1)
                    <span style="color:green;font-weight: bold">+   {{ $customer->amount }}</span>
                    @else
                    <span style="color:red;font-weight: bold"> - {{ $customer->amount }}</span>
                    @endif

            </td>

             <td>{{date('d-m-Y H:m s',strtotime($customer->created_at))}}</td>

        </tr>

    @endforeach

    <tr>
        <td colspan="9" align="center">
            {!! $customers->links() !!}
        </td>
    </tr>
@endif


