\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key c \minor \time 4/4 \tempoMarkup "Adagio"
    c8 es g c h-! f'-! d-! \hA h-!
    g16-!\p d'( c h) d-! as( g f) es8-!\f g-! c-! g'-!
    g16 g g g fis fis fis fis g8 d,32([ c h a)] g4
    r16 d''-!\p d( es) es( h) h( c) \hA h(\f d) \hA h-! as'-! \hA h,( d) \hA h-! as'-!
    g( es) es( c) g'( es) es( c) r e-! g( c,) r \hA e-! g( c,)
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key c \minor \time 4/4 \tempoMarkup "Adagio"
    c8\f-! es-! g-! c-! h-! f'-! d-! \hA h-!
    g16-!\p d'( c h) d-! as( g f) es8-!\f es-! g-! es-!
    es16 es es es c' c c c h8 d,32([ c h a)] g4
    r16 h'-!\p h( c) c( d,) d( es) d(\f as') d,-! as''-! d,,( as') d,-! as''-!
    g( es) es( c) g'( es) es( c) c c c c c c c c
  }
}

Viola = {
  \relative c' {
    \clef alto
    \key c \minor \time 4/4 \tempoMarkup "Adagio"
    <c c,>4\f <es g,>8 q <f g,>4 q
    h,8\p r g r <c c,>4\f c8 es16 c
    c8 c c c d g, g4
    g\p r f8\f f' f f
    es16( g) g( es) es( g) g( es) c8 c c c
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key c \minor \time 4/4 \tempoMarkup "Adagio" \autoBeamOff
    r4 \mvTr c'8\f^\tutti c h4 h
    r2 r4 c8 c
    c2 h
    r r4 h8 h
    c4 c r e8 e
  }
}

SopranoLyrics = \lyricmode {
  Sta -- bat ma -- ter
  do -- lo --
  ro -- sa,
  do -- lo --
  ro -- sa, do -- "lo -"
}

Alto = {
  \relative c' {
    \clef alto
    \key c \minor \time 4/4 \tempoMarkup "Adagio" \autoBeamOff
    r4 \mvTr es8\f^\tutti es f4 f
    r2 r4 es8 es
    es4( fis) g2
    r r4 as8 as
    g4 g r g8 g
  }
}

AltoLyrics = \lyricmode {
  Sta -- bat ma -- ter
  do -- lo --
  ro -- sa,
  do -- lo --
  ro -- sa, do -- "lo -"
}

Tenore = {
  \relative c' {
    \clef tenor
    \key c \minor \time 4/4 \tempoMarkup "Adagio" \autoBeamOff
    r4 \mvTr g8\f^\tutti g g4 g
    r2 r4 g8 g
    c2 d
    r r4 d8 d
    es4 es r c8 c
  }
}

TenoreLyrics = \lyricmode {
  Sta -- bat ma -- ter
  do -- lo --
  ro -- sa,
  do -- lo --
  ro -- sa, do -- "lo -"
}

Basso = {
  \relative c {
    \clef bass
    \key c \minor \time 4/4 \tempoMarkup "Adagio" \autoBeamOff
    r4 \mvTr c8\f^\tutti c d4 d
    r2 r4 c8 c'
    as2 g
    r r4 f8 f
    es4 c r c'8 c
  }
}

BassoLyrics = \lyricmode {
  Sta -- bat ma -- ter
  do -- lo --
  ro -- sa,
  do -- lo --
  ro -- sa, do -- "lo -"
}

Organo = {
  \relative c {
    \clef bass
    \key c \minor \time 4/4 \tempoMarkup "Adagio"
    \mvTr c4\f-\tutti c d d
    \mvTr g8\p-\solo -\mvTz-\tasto r h r \mvTr c4\f-\tutti c
    as8 as as as g g, g4
    \mvTr g'\p-\solo -\mvTz-\tasto r \mvTr f\f-\tutti f
    es c c8 c c c
  }
}

BassFigures = \figuremode {
  r2 <6! 4 3>
  r <_->
  <7>4 <6\\> <_!>2
  r <6 4! _->
  <6> <_!>
}

\score {
  <<
    \new StaffGroup <<
      \new GrandStaff \with { \smallGroupDistance } <<
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
      \new Staff {
        \set Staff.instrumentName = "vla"
        \Viola
      }
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
