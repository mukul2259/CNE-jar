package com.quicinc.cne;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface ICNEManager extends IInterface {
    boolean getIWLANEnabled(String str) throws RemoteException;

    int getNSRMEnabled(String str) throws RemoteException;

    int getPolicyVersion(int i, String str) throws RemoteException;

    int getWQEEnabled(String str) throws RemoteException;

    void setIWLANEnabled(boolean z, String str) throws RemoteException;

    int setNSRMEnabled(int i, String str) throws RemoteException;

    int setWQEEnabled(boolean z, String str) throws RemoteException;

    int updatePolicy(int i, String str, String str2) throws RemoteException;

    public static abstract class Stub extends Binder implements ICNEManager {
        private static final String DESCRIPTOR = "com.quicinc.cne.ICNEManager";
        static final int TRANSACTION_getIWLANEnabled = 3;
        static final int TRANSACTION_getNSRMEnabled = 5;
        static final int TRANSACTION_getPolicyVersion = 8;
        static final int TRANSACTION_getWQEEnabled = 1;
        static final int TRANSACTION_setIWLANEnabled = 4;
        static final int TRANSACTION_setNSRMEnabled = 6;
        static final int TRANSACTION_setWQEEnabled = 2;
        static final int TRANSACTION_updatePolicy = 7;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ICNEManager asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(DESCRIPTOR);
            if (iin == null || !(iin instanceof ICNEManager)) {
                return new Proxy(obj);
            }
            return (ICNEManager) iin;
        }

        public IBinder asBinder() {
            return this;
        }

        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            int i = 0;
            switch (code) {
                case 1:
                    data.enforceInterface(DESCRIPTOR);
                    int _result = getWQEEnabled(data.readString());
                    reply.writeNoException();
                    reply.writeInt(_result);
                    return true;
                case 2:
                    data.enforceInterface(DESCRIPTOR);
                    int _result2 = setWQEEnabled(data.readInt() != 0, data.readString());
                    reply.writeNoException();
                    reply.writeInt(_result2);
                    return true;
                case 3:
                    data.enforceInterface(DESCRIPTOR);
                    boolean _result3 = getIWLANEnabled(data.readString());
                    reply.writeNoException();
                    if (_result3) {
                        i = 1;
                    }
                    reply.writeInt(i);
                    return true;
                case 4:
                    data.enforceInterface(DESCRIPTOR);
                    setIWLANEnabled(data.readInt() != 0, data.readString());
                    reply.writeNoException();
                    return true;
                case 5:
                    data.enforceInterface(DESCRIPTOR);
                    int _result4 = getNSRMEnabled(data.readString());
                    reply.writeNoException();
                    reply.writeInt(_result4);
                    return true;
                case 6:
                    data.enforceInterface(DESCRIPTOR);
                    int _result5 = setNSRMEnabled(data.readInt(), data.readString());
                    reply.writeNoException();
                    reply.writeInt(_result5);
                    return true;
                case 7:
                    data.enforceInterface(DESCRIPTOR);
                    int _result6 = updatePolicy(data.readInt(), data.readString(), data.readString());
                    reply.writeNoException();
                    reply.writeInt(_result6);
                    return true;
                case 8:
                    data.enforceInterface(DESCRIPTOR);
                    int _result7 = getPolicyVersion(data.readInt(), data.readString());
                    reply.writeNoException();
                    reply.writeInt(_result7);
                    return true;
                case 1598968902:
                    reply.writeString(DESCRIPTOR);
                    return true;
                default:
                    return super.onTransact(code, data, reply, flags);
            }
        }

        private static class Proxy implements ICNEManager {
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            public int getWQEEnabled(String packageName) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    this.mRemote.transact(1, _data, _reply, 0);
                    _reply.readException();
                    return _reply.readInt();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            public int setWQEEnabled(boolean enabled, String packageName) throws RemoteException {
                int i = 0;
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (enabled) {
                        i = 1;
                    }
                    _data.writeInt(i);
                    _data.writeString(packageName);
                    this.mRemote.transact(2, _data, _reply, 0);
                    _reply.readException();
                    return _reply.readInt();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            public boolean getIWLANEnabled(String packageName) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    this.mRemote.transact(3, _data, _reply, 0);
                    _reply.readException();
                    return _reply.readInt() != 0;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            public void setIWLANEnabled(boolean enabled, String packageName) throws RemoteException {
                int i = 0;
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (enabled) {
                        i = 1;
                    }
                    _data.writeInt(i);
                    _data.writeString(packageName);
                    this.mRemote.transact(4, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            public int getNSRMEnabled(String packageName) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    this.mRemote.transact(5, _data, _reply, 0);
                    _reply.readException();
                    return _reply.readInt();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            public int setNSRMEnabled(int nsrmSetType, String packageName) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(nsrmSetType);
                    _data.writeString(packageName);
                    this.mRemote.transact(6, _data, _reply, 0);
                    _reply.readException();
                    return _reply.readInt();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            public int updatePolicy(int policyType, String filepath, String packageName) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(policyType);
                    _data.writeString(filepath);
                    _data.writeString(packageName);
                    this.mRemote.transact(7, _data, _reply, 0);
                    _reply.readException();
                    return _reply.readInt();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            public int getPolicyVersion(int policyType, String packageName) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(policyType);
                    _data.writeString(packageName);
                    this.mRemote.transact(8, _data, _reply, 0);
                    _reply.readException();
                    return _reply.readInt();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }
        }
    }
}
