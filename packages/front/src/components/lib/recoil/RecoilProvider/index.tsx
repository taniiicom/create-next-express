"use client";
// [tips] app-router 対応. recoil は client でしか使えないので, `use client`. ^^

import { ReactNode } from "react";
import { RecoilRoot } from "recoil";

interface RecoilProviderProps {
  children: ReactNode;
}

export const RecoilProvider: React.FC<RecoilProviderProps> = ({ children }) => {
  return <RecoilRoot>{children}</RecoilRoot>;
};
