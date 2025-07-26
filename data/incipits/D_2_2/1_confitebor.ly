\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key a \minor \time 4/4 \tempoMarkup "[no tempo]"
    R1*3
    r16 e'-! e( f) f4 r16 dis-! dis( e) e4
    r16 cis-! cis( d) d4~ d16 h c a h4
    a r r r16 e'-!\p e( f)
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key a \minor \time 4/4 \tempoMarkup "[no tempo]"
    R1*3
    r4 r16 c'-! c( h) h4 r16 h-! h( a)
    a4 r16 a-! a( gis) gis8 a4 \hA gis8
    a4 r r2
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key a \minor \time 4/4 \tempoMarkup "[no tempo]" \autoBeamOff
    e'4.^\solo f8 gis, a d c16[ h]
    c8. h16 a8 c16 c h8. h16 e8 d
    c16[ h] c4 h16[ c] d8[ c] h4
    a r r2
    R1*2
  }
}

SopranoLyrics = \lyricmode {
  Con -- fi -- te -- bor ti -- bi,
  Do -- mi -- ne, in con -- si -- li -- o iu --
  sto -- _ _ _ _
  rum,
}

Alto = {
  \relative c' {
    \clef alto
    \key a \minor \time 4/4 \tempoMarkup "[no tempo]" \autoBeamOff
    r2 r4 r8 e^\solo
    e a, e' a a gis r4
    r8 e a e fis16[ gis] a8 a[ \hA gis]
    a4 r r2
    R1*2
  }
}

AltoLyrics = \lyricmode {
  in
  to -- to cor -- de me -- o,
  et con -- gre -- ga -- ti -- o --
  ne.
}

Tenore = {
  \relative c' {
    \clef tenor
    \key a \minor \time 4/4 \tempoMarkup "[no tempo]" \autoBeamOff
    R1*6
  }
}

TenoreLyrics = \lyricmode {
}

Basso = {
  \relative c {
    \clef bass
    \key a \minor \time 4/4 \tempoMarkup "[no tempo]" \autoBeamOff
    R1*4
    r2 r4 e8^\solo e
    a[ c16 h] a[ e] c[ e] a,8 a16 a a'8 c
  }
}

BassoLyrics = \lyricmode {
  Ma -- gna
  o -- pe -- ra Do -- mi -- ni: Ex -- "qui -"
}

Organo = {
  \relative c {
    \clef bass
    \key a \minor \time 4/4 \tempoMarkup "[no tempo]"
    a8-\solo h c d e c h e
    a,4 c8 a e'4 gis8 e
    a a, r4 h8 a e' e,
    a4 r16 a'-! a( gis) gis4 r16 g-! g( fis)
    fis4 r16 f-! f( e) e8 a, e' e,
    a2~ a4 a'
  }
}

BassFigures = \figuremode {
  r2 <_+>8 <6> <7> <_+>
  r2 <4>8 <_+> <6> <7>
  r2 <5\+>16 <6\\>8. <4>8 <_+>
  r4 r16 <6>8. q4 r16 q8.
  <6>4 r16 <\t>8. <7 _+>4 <5 4>8 <\t _+>
  r1
}

\score {
  <<
    \new StaffGroup <<
      \new GrandStaff <<
        \set GrandStaff.instrumentName = "vl"
        \new Staff {
          \set Staff.instrumentName = "1"
          \ViolinoI
        }
        \new Staff {
          \set Staff.instrumentName = "2"
          \ViolinoII
        }
      >>
    >>
    \new ChoirStaff <<
      \new Staff {
        \set Staff.instrumentName = "S"
        \new Voice = "Soprano" { \dynamicUp \Soprano }
      }
      \new Lyrics \lyricsto Soprano \SopranoLyrics

      \new Staff {
        \set Staff.instrumentName = "A"
        \new Voice = "Alto" { \dynamicUp \Alto }
      }
      \new Lyrics \lyricsto Alto \AltoLyrics

      \new Staff {
        \set Staff.instrumentName = "T"
        \new Voice = "Tenore" { \dynamicUp \Tenore }
      }
      \new Lyrics \lyricsto Tenore \TenoreLyrics

      \new Staff {
        \set Staff.instrumentName = "B"
        \new Voice = "Basso" { \dynamicUp \Basso }
      }
      \new Lyrics \lyricsto Basso \BassoLyrics
    >>
    \new StaffGroup <<
      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "org" "b" }
        \Organo
      }
    >>
    \new FiguredBass { \BassFigures }
  >>
}
